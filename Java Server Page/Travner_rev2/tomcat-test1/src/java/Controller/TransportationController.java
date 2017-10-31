/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ActivityDAO;
import DAO.DistanceDAO;
import DAO.LocationDAO;
import DAO.TransportationModeDAO;
import Model.Activity;
import Model.Distance;
import Model.DistanceLocation;
import Model.TransportationMode;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kivlan Aziz Al-Falaah
 */
@WebServlet(name = "TransportationController", urlPatterns = {"/Transportation"})
public class TransportationController extends HttpServlet {

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
            out.println("<title>Servlet TransportationMode</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TransportationMode at " + request.getContextPath() + "</h1>");
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
        String action = request.getServletPath();
        try {
                listLocation(request, response);
        } catch (SQLException | ParseException ex) {
                Logger.getLogger(LocController.class.getName()).log(Level.SEVERE, null, ex);
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
            throws ServletException, IOException {
        try {
            save(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LocController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    public void listLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {

        List<TransportationMode> transports = TransportationModeDAO.getAll();
        
        request.setAttribute("transportation",transports);
        //request.setAttribute("distance", distance);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/field_kanan_transportation.jsp");
        dispatcher.include(request, response);
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
//        String ActivityName = request.getParameter("ActivityName");
//        String startHour = request.getParameter("HourStart");
//        String startMinute = request.getParameter("MinuteStart");
//        String endHour = request.getParameter("HourEnd");
//        String endMinute = request.getParameter("MinuteEnd");
//        int priority = Integer.parseInt(request.getParameter("Priority"));
//        ActivityController Activity = new ActivityController();
//        Activity act = new Activity();
//        String TransportationCode = request.getParameter("transport");
//        
//        act.setTransportationCode(TransportationCode);
//        act.setEventName(Activity.activityName);
//        act.setEventDate(Activity.eventDate);
//        act.setId_StartLocation(Activity.ID_StartLoc);
//        act.setId_Destination(Activity.ID_EndLoc);
//        act.setStartEventTime(Activity.startTime);
//        act.setEndEventTime(Activity.endTime);
//        act.setPriority(Activity.priority);
//        act.setTransportationCode("101");
//        act.setEventName("menari");
//        act.setEventDate(Activity.eventDate);
//        act.setId_StartLocation(Activity.ID_StartLoc);
//        act.setId_Destination(Activity.ID_EndLoc);
//        act.setStartEventTime(Activity.startTime);
//        act.setEndEventTime(Activity.endTime);
//        act.setPriority(Activity.priority);
//        
//        ActivityDAO.save(act);
//        response.sendRedirect("./create_schedule.jsp");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
