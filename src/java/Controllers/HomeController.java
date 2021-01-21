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
import Models.Hotel;
import javax.servlet.http.HttpSession;
/**
 *
 * @author WIN
 */
@WebServlet(name = "home", urlPatterns = {"/home"})
public class HomeController extends HttpServlet
{
    public HotelDAO hotelDAO = null;
    public Hotel hotel = null;
    public HomeController()
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
            response.sendRedirect("login");
        }
        else
        {
            RequestDispatcher rd = request.getRequestDispatcher("views/home.jsp");  
            rd.forward(request, response);
        }
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
            throws ServletException, IOException
    {
        String checkIn = request.getParameter("check_in");
        String checkOut = request.getParameter("check_out");
        String adults = request.getParameter("adults");
        String children = request.getParameter("children");
        String rooms = request.getParameter("rooms");
        String hotelName = request.getParameter("hotel_name");
        
        
        
       
        /*
        String[] keys = {"email", "password"};
        String[] values = {email, password};
        this.hotel = this.hotelDAO.getBy(keys, values);
        */
        request.setAttribute("hotels", "Enter a valid email and password!");
        RequestDispatcher rd=request.getRequestDispatcher("views/login.jsp");  
        rd.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
