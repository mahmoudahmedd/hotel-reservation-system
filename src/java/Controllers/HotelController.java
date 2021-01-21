/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.HotelDAO;
import DAO.RateDAO;
import DAO.RoomDAO;
import Models.Hotel;
import Models.Rate;
import Models.Room;
import Models.UserRate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
/**
 *
 * @author WIN
 */
@WebServlet(name = "hotel", urlPatterns = {"/hotel"})
public class HotelController extends HttpServlet
{
    public HotelDAO hotelDAO = null;
    public Hotel hotel = null;
    
    public RoomDAO roomDAO = null;
    public List<Room> rooms = null;
    
    public RateDAO rateDAO = null;
    public List<UserRate> userRate = null;
    
    public HotelController()
    {
        this.hotelDAO = new HotelDAO();
        this.hotel = new Hotel();
        
        this.roomDAO = new RoomDAO();
        this.rooms = new ArrayList<Room>();
        
        this.rateDAO = new RateDAO();
        this.userRate = new ArrayList<UserRate>();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession(false);
        
        if (session == null || session.getAttribute("user_id") == null) 
        {
            RequestDispatcher rd = request.getRequestDispatcher("views/404.jsp");
            rd.forward(request, response);
        }
        
        String id = request.getParameter("id");
        
        if(id == null || id.equals(""))
        {
            RequestDispatcher rd = request.getRequestDispatcher("views/404.jsp");
            rd.forward(request, response);
            return;
        }
        
        Integer intId = Integer.parseInt(id);
        
        this.hotel = this.hotelDAO.get(intId);
        
        
        if(this.hotel == null || session.getAttribute("user_id") == null )
        {
            RequestDispatcher rd = request.getRequestDispatcher("views/404.jsp");
            rd.forward(request, response);
            return;
        }
        
        this.rooms = this.roomDAO.getAllWhere("hotel_id", intId);
        this.userRate = this.rateDAO.getAllInner("hotel_id", intId);
        
        request.setAttribute("hotel", this.hotel);
        request.setAttribute("rooms", this.rooms);
        request.setAttribute("rates", this.userRate);
        
        RequestDispatcher rd = request.getRequestDispatcher("views/hotel.jsp");  
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String type = request.getParameter("req_type");
        
        if(type.equals("rate"))
        {
            String hotelId = request.getParameter("hotel_id");
            Integer intHotelId = Integer.parseInt(hotelId);
            String userId = request.getParameter("user_id");
            Integer intUserId = Integer.parseInt(userId);
            String rate = request.getParameter("rate");
            Integer intRate = Integer.parseInt(rate);
            String comment = request.getParameter("review_text");
            
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date(System.currentTimeMillis());
            Rate ratee = new Rate();
            
            ratee.setRate(intRate);
            ratee.setComment(comment);
            ratee.setHotelId(intHotelId);
            ratee.setUserId(intUserId);
            ratee.setCreationDate(formatter.format(date));
            
            
            int flag = this.rateDAO.save(ratee);
            
            if(flag != 0)
            {
                this.hotel = this.hotelDAO.get(intHotelId);
                double rateValue = ((this.hotel.getRates() * this.hotel.getNumberOfRates()) + intRate)/ (this.hotel.getNumberOfRates() + 1);
                Integer numberOfRates = this.hotel.getNumberOfRates() + 1;
                this.hotelDAO.updateRowByColumn("number_of_rates", numberOfRates.toString(), intHotelId);
                this.hotelDAO.updateRowByColumn("rates", Double.toString(rateValue) , intHotelId);
                response.sendRedirect("hotel?id="+hotelId);
                
            }
        }
        
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
