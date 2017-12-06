/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kivla
 */
@WebServlet(name = "Travner", urlPatterns = {"/Travner"})
public class Travner extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Travner</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Travner at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
            throws ServletException, IOException {
        processRequest(request, response);
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
        try {
            getData(request,response);
        } catch (SQLException ex) {
            Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void getDataAct(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
//            java.sql.Date eventDate = null;
            
            String activityName = request.getParameter("ActivityName");
            String startTime = request.getParameter("starttime");
            String endTime = request.getParameter("endtime");
            String spareTime = request.getParameter("sparetime");

            response.sendRedirect("./add_activity.jsp");
    }
    
    public void getDataLoc(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
        
            String startLoc_Lat = request.getParameter("");
            String startLoc_Long = request.getParameter("");
            
            String destLoc_Lat = request.getParameter("");
            String destLoc_Long = request.getParameter("");
    }
    
    public void getData(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
        
            String activityName = request.getParameter("ActivityName");
            String startTime = request.getParameter("starttime");
            String endTime = request.getParameter("endtime");
            String spareTime = request.getParameter("sparetime");
            
            String startLoc_Lat = request.getParameter("marker1_lat");
            String startLoc_Long = request.getParameter("marker1_lng");
            
            String destLoc_Lat = request.getParameter("marker2_lat");
            String destLoc_Long = request.getParameter("marker2_lng");

            response.sendRedirect("./add_activity.jsp");
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
