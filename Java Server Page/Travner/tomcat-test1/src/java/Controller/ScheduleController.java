/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ActivityDAO;
import DAO.DistanceDAO;
import DAO.LocationDAO;
import Model.Activities;
import Model.Activity;
import Model.Distance;
import Model.DistanceLocation;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
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
@WebServlet(name = "ScheduleController", urlPatterns = {"/ScheduleController"})
public class ScheduleController extends HttpServlet {
    public java.sql.Date eventDate;
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
            out.println("<title>Servlet ActivityController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ActivityController at " + request.getContextPath() + "</h1>");
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
        } catch (ParseException ex) {
            Logger.getLogger(ScheduleController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void listLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {

        List<Activity> activity = ActivityDAO.getAll();
        List<Activities> activ = new ArrayList<>();
        List<Distance> distance = DistanceDAO.getAll();
        //List<DistanceLocation> distLoc = new ArrayList<>();
//        activity.forEach((Activity act) ->{
//            Activities activities = new Activities();
//            distance.forEach((Distance dist) ->{
//                if (Objects.equals(act.getId_StartLocation(), dist.getId_StartLocation()) && Objects.equals(act.getId_Destination(), dist.getId_Destination())){
//                activities.setDistance((dist.getDistanceKM()*1000)+dist.getDistanceM());
//                activities.setStartLoc(LocationDAO.getByID(dist.getId_StartLocation()));
//                activities.setDestination(LocationDAO.getByID(dist.getId_Destination()));
//                }
//            });
//            activities.setEventName(act.getEventName());
//            activ.add(activities);
//        });
// CODE BELUM SELESAI!!!

        request.setAttribute("Activity",activ);
        //request.setAttribute("distance", distance);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/schedule.jsp");
        dispatcher.include(request, response);
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ParseException {
//        String date = request.getParameter("Date");
//        String month = request.getParameter("Month");
//        String year = request.getParameter("Year");
//        String format = date + "/" + month + "/" + year;
//        SimpleDateFormat formatDate = new SimpleDateFormat("dd/M/yyyy");  
//        eventDate = (java.sql.Date) formatDate.parseObject(format);
//        //.save(newLocation);
//        response.sendRedirect("./add_activity.jsp");
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
