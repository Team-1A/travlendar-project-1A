/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ActivityDAO;
import DAO.DistanceDAO;
import DAO.TransportationModeDAO;
import Model.Activity;
import Model.TransportRecommend;
import Model.TransportationMode;
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
 * @author kivla
 */
@WebServlet(name = "DisplayRecommend", urlPatterns = {"/Recommend"})
public class DisplayRecommend extends HttpServlet {

        private String activityName = null;
        private int ID_StartLoc = 0;
        private int ID_EndLoc = 0;
        private Time startTime = null;
        private Time endTime = null;
        private int priority = 0;
        private java.sql.Date eventDate = null;
        private String TransportationCode = null;
        
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
            out.println("<title>Servlet DisplayRecommend</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DisplayRecommend at " + request.getContextPath() + "</h1>");
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
            String action = request.getParameter("action");
            if (action.equals("Activity")){
                getActivity(request,response);
            }
            else if (action.equals("Schedule")){
                getSchedule(request,response);
            }else if (action.equals("Transport")){
                save(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LocController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(DisplayRecommend.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    public void listLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {

        List<TransportationMode> transports = TransportationModeDAO.getAll();
        List<TransportRecommend> recomend = new ArrayList();
        ActivityController Activity = new ActivityController();
        
        transports.forEach((TransportationMode transport)->{
            TransportRecommend TR = new TransportRecommend();
            TR.setTransportName(transport.getTransportation());
            TR.setDistance(DistanceDAO.getDistance(ID_StartLoc, ID_EndLoc));
            TR.setTransportVelocity(transport.getVelocity());
            TR.setEstimation(TR.getDistance()/TR.getTransportVelocity());
            recomend.add(TR);
        });
        //Activity.ID_StartLoc
        request.setAttribute("transportation",recomend);
        //request.setAttribute("distance", distance);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/field_kiri_transportation.jsp");
        dispatcher.include(request, response);
    }
    
    public void getActivity(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
//            String activityName = null;
//            int ID_StartLoc = 0;
//            int ID_EndLoc = 0;
//            Time startTime = null;
//            Time endTime = null;
//            int priority = 0;
        
            SimpleDateFormat format = new SimpleDateFormat ("HH:mm");
            int[] A = new int[2];
            int i = 0;
            String ActivityName = request.getParameter("ActivityName");
            String fromTo = request.getParameter("location");
            String startHour = request.getParameter("HourStart");
            String startMinute = request.getParameter("MinuteStart");
            String endHour = request.getParameter("HourEnd");
            String endMinute = request.getParameter("MinuteEnd");
            int _priority = Integer.parseInt(request.getParameter("Priority"));
            String start = startHour + ":" + startMinute;
            String end = endHour + ":" + endMinute;
            Scanner scanDelimeter = new Scanner(fromTo);
            scanDelimeter.useDelimiter("-");
            while(scanDelimeter.hasNext()){
                A[i] = Integer.parseInt(scanDelimeter.next());
                i++;
            }       
            activityName = ActivityName;
            ID_StartLoc = A[0];
            ID_EndLoc = A[1];
            //startTime = (java.sql.Time) format.parseObject(start);
            //endTime = (java.sql.Time) format.parseObject(end);
            priority = _priority;
            
            response.sendRedirect("./transportation_mode.jsp");
    }
    
    public void getSchedule(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
//            java.sql.Date eventDate = null;
            
            String date = request.getParameter("Date");
            String month = request.getParameter("Month");
            String year = request.getParameter("Year");
            String format = date + "/" + month + "/" + year;
            SimpleDateFormat formatDate = new SimpleDateFormat("dd/M/yyyy");
            eventDate = (java.sql.Date) formatDate.parseObject(format);
            response.sendRedirect("./add_activity.jsp");
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ParseException {
//        java.sql.Date eventDate = null;
//        String TransportationCode = null;
//        String activityName = null;
//        int ID_StartLoc = 0;
//        int ID_EndLoc = 0;
//        Time startTime = null;
//        Time endTime = null;
//        int priority = 0;
//        
//        String action = request.getParameter("action");
//        switch (action) {
//            case "Activity":
//                {
//                    SimpleDateFormat format = new SimpleDateFormat ("HH:mm");
//                    int[] A = new int[2];
//                    int i = 0;
//                    String ActivityName = request.getParameter("ActivityName");
//                    String fromTo = request.getParameter("location");
//                    String startHour = request.getParameter("HourStart");
//                    String startMinute = request.getParameter("MinuteStart");
//                    String endHour = request.getParameter("HourEnd");
//                    String endMinute = request.getParameter("MinuteEnd");
//                    int _priority = Integer.parseInt(request.getParameter("Priority"));
//                    String start = startHour + ":" + startMinute;
//                    String end = endHour + ":" + endMinute;
//                    Scanner scanDelimeter = new Scanner(fromTo);
//                    scanDelimeter.useDelimiter("-");
//                    while(scanDelimeter.hasNext()){
//                        A[i] = Integer.parseInt(scanDelimeter.next());
//                        i++;
//                    }       
//                    activityName = ActivityName;
//                    ID_StartLoc = A[0];
//                    ID_EndLoc = A[1];
//                    startTime = (java.sql.Time) valueOf(start);
//                    endTime = (java.sql.Time) valueOf(end);
//                    priority = _priority;
//                    response.sendRedirect("./transportation_mode.jsp");
//                    break;
//                }
//            case "Schedule":
//                {
//                    String date = request.getParameter("Date");
//                    String month = request.getParameter("Month");
//                    String year = request.getParameter("Year");
//                    String format = date + "/" + month + "/" + year;
//                    SimpleDateFormat formatDate = new SimpleDateFormat("dd/M/yyyy");
//                    eventDate = (java.sql.Date) formatDate.parseObject(format);
//                    response.sendRedirect("./add_activity.jsp");
//                    break;
//                }
//            case "Transport":
//                TransportationCode = request.getParameter("transport");
//                break;
//            default:
//                break;
//        }
        
        TransportationCode = request.getParameter("transport");
        
        Activity act = new Activity();
        act.setEventName(activityName);
        act.setTransportationCode(TransportationCode);
        act.setEventDate(eventDate);
        act.setId_StartLocation(ID_StartLoc);
        act.setId_Destination(ID_EndLoc);
        act.setStartEventTime(startTime);
        act.setEndEventTime(endTime);
        act.setPriority(priority);
        
        ActivityDAO.save(act);
        response.sendRedirect("./create_schedule.jsp");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
