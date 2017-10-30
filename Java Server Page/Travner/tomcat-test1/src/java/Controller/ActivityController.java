/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DistanceDAO;
import DAO.LocationDAO;
import Model.Activity;
import Model.Distance;
import Model.DistanceLocation;
import Model.Location;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Time;
import static java.sql.Time.valueOf;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
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
 * @author kivlan Aziz Al-Falaah
 */
@WebServlet(name = "ActivityController", urlPatterns = {"/ActController"})
public class ActivityController extends HttpServlet {
    //public Activity activity;
    public String activityName;
    public int ID_StartLoc;
    public int ID_EndLoc;
    public java.sql.Date eventDate;
    public Time startTime;
    public Time endTime;
    public int priority;
    
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
            Logger.getLogger(ActivityController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public void listLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {

        List<Distance> distance = DistanceDAO.getAll();
        List<DistanceLocation> distLoc = new ArrayList<>();
      
        distance.forEach((Distance dist) ->{
            DistanceLocation objdist = new DistanceLocation();
            
            objdist.setDistKm(dist.getDistanceKM());
            objdist.setDistM(dist.getDistanceM());
            objdist.setStartLoc(LocationDAO.getByID(dist.getId_StartLocation()));
            objdist.setDestination(LocationDAO.getByID(dist.getId_Destination()));
            objdist.setID_Start(dist.getId_StartLocation());
            objdist.setID_Destination(dist.getId_Destination());
            distLoc.add(objdist);
        });
        
        request.setAttribute("Locations",distLoc);
        //request.setAttribute("distance", distance);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/activity.jsp");
        dispatcher.include(request, response);
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ParseException {
//        ScheduleController date = new ScheduleController();
//        SimpleDateFormat format = new SimpleDateFormat ("HH:mm");
//        int[] A = new int[2];
//        int i = 0;
//        
//        String ActivityName = request.getParameter("ActivityName");
//        String fromTo = request.getParameter("location");
//        String startHour = request.getParameter("HourStart");
//        String startMinute = request.getParameter("MinuteStart");
//        String endHour = request.getParameter("HourEnd");
//        String endMinute = request.getParameter("MinuteEnd");
//        int _priority = Integer.parseInt(request.getParameter("Priority"));
//        
//        String start = startHour + ":" + startMinute;
//        String end = endHour + ":" + endMinute;
//        Scanner scanDelimeter = new Scanner(fromTo);
//        scanDelimeter.useDelimiter("-");
//        while(scanDelimeter.hasNext()){
//            A[i] = Integer.parseInt(scanDelimeter.next());
//            i++;
//        }
//        
//        activityName = ActivityName;
//        ID_StartLoc = A[0];
//        ID_EndLoc = A[1];
//        eventDate = (java.sql.Date) date.eventDate;
//        startTime = (java.sql.Time) valueOf("13:40:00");
//        endTime = (java.sql.Time) valueOf("15:15:00");
//        priority = _priority;
//        
//        response.sendRedirect("./transportation_mode.jsp");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
