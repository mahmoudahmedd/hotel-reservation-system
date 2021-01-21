/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.HotelDAO;
import DAO.SearchDAO;
import Models.Hotel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WIN
 */
@WebServlet(name = "search", urlPatterns = {"/search"})
public class SearchController extends HttpServlet
{
    public HotelDAO hotelDAO = null;
    public Hotel hotel = null;
    public SearchController()
    {
        this.hotelDAO = new HotelDAO();
        this.hotel = new Hotel();
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
            RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");  
            rd.forward(request, response);
        }
        
        List<Hotel> hotels = new ArrayList<Hotel>();
        SearchDAO searchDAO = new SearchDAO();
        
        String checkInDate = request.getParameter("check_in");
        String checkOutDate = request.getParameter("check_out");
        String adults = request.getParameter("adults");
        String children = request.getParameter("children");
        String governorate = request.getParameter("governorate");
        String hotelName = request.getParameter("hotel_name");
        
        // optional
        String price = request.getParameter("price");
        String rating = request.getParameter("rating");
        String stars = request.getParameter("stars");
        String meals = request.getParameter("meals");

        if(checkInDate == null)
        {
            checkInDate = "";
        }
        
        if(checkOutDate == null)
        {
            checkOutDate = "";
        }
        
        if(adults == null)
        {
            adults = "";
        }
        
        if(children == null)
        {
            children = "";
        }
        
        if(governorate == null)
        {
            governorate = "";
        }
        
        if(hotelName == null)
        {
            hotelName = "";
        }
        
        hotels = searchDAO.getAllBy2(checkInDate, checkOutDate, adults, children, governorate, hotelName, price, rating, stars, meals);
        
        request.setAttribute("hotels", hotels);
        RequestDispatcher rd = request.getRequestDispatcher("views/all_hotels_list.jsp");  
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
