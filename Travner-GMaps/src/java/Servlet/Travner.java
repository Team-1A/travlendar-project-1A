/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.ActivityDAO;
import DAO.LocationDAO;
import DAO.TravelDAO;
import Model.Activity;
import Model.Location;
import Model.Travel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
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
            
            String startDay = request.getParameter("startday");
            String endDay = request.getParameter("endday");
            String startTime = request.getParameter("starttime");
            String endTime = request.getParameter("endtime");
            
            String spareTime = request.getParameter("sparetime");
            
            String startLoc_Lat = request.getParameter("marker1_lat");
            String startLoc_Long = request.getParameter("marker1_lng");
            
            Location loc = new Location();
            Double lat = Double.parseDouble(startLoc_Lat);
            Double lng = Double.parseDouble(startLoc_Long);
            loc.setLocation_Lat(Double.parseDouble(startLoc_Lat));
            loc.setLocation_Long(Double.parseDouble(startLoc_Long));
            LocationDAO.save(loc);
            
            Location locn = new Location();
            String destLoc_Lat = request.getParameter("marker2_lat");
            String destLoc_Long = request.getParameter("marker2_lng");
            locn.setLocation_Lat(Double.parseDouble(destLoc_Lat));
            locn.setLocation_Long(Double.parseDouble(destLoc_Long));
            LocationDAO.save(locn);
            
            Travel trav = new Travel();
            trav.setStartLocation_Lat(Double.parseDouble(startLoc_Lat));
            trav.setStartLocation_Long(Double.parseDouble(startLoc_Long));
            trav.setDestLocation_Lat(Double.parseDouble(destLoc_Lat));
            trav.setDestLocation_Long(Double.parseDouble(destLoc_Long));
            trav.setTransportation_Mode("Mobil Dinas");
            
            String departure = "2017-03-11";
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date dt = sdf.parse(departure);
            java.sql.Date Departure_Time = new java.sql.Date(dt.getTime());
            trav.setDeparture_Time(Departure_Time);
            
            List<Integer> id = TravelDAO.getID();
            int size = id.size();
            int travID = size + 1;
            trav.setTravel_ID(travID);
            
            TravelDAO.save(trav);
            
            Activity act = new Activity();
            String TIME_START = startDay + " " + startTime + ":00";
            String TIME_END = endDay + " " + endTime + ":00";
            SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date ts = sd.parse(TIME_START);
            java.util.Date te = sd.parse(TIME_END);
            java.sql.Date time_start = new java.sql.Date(ts.getTime());
            java.sql.Date time_end = new java.sql.Date(te.getTime());
            
            String spareTimex = "00:35:00";
            SimpleDateFormat tm = new SimpleDateFormat("HH:mm:ss");
            java.util.Date st = tm.parse(spareTimex);
            java.sql.Time tms = new java.sql.Time(st.getTime());
            
            act.setTime_Start(time_start);
            act.setTime_End(time_end);
            act.setSpare_Time(tms);
            act.setActivity_Name(activityName);
            
            act.setTravel_ID(travID);
            act.setUser_ID(1);
            
            ActivityDAO.save(act);
            
            //act.setSpare_Time(Spare_Time);
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
