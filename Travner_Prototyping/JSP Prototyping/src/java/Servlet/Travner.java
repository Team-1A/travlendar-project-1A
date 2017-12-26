/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.ActivityDAO;
import DAO.LocationDAO;
import DAO.TravelDAO;
import DAO.User_AccountDAO;
import Model.Activity;
import ModelJSON.Activity_JSON;
import Model.Location;
import Model.Travel;
import Model.User_Account;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author KIVLAN AZIZ AL-FALAAH
 */
@WebServlet(name = "Travner", urlPatterns = {"/Travner"})
public class Travner extends HttpServlet {
    String email = null;
    String password = null;
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
        String param = request.getParameter("action");
        
        switch(param){
            case "activitycal":{
                DisplayActCalendar(request,response);
            }
            case "getProfile":{
            try {
                getUserProfile(request,response);
            } catch (SQLException | ParseException ex) {
                Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
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
        String param = request.getParameter("action");
        
        switch(param){
            case "InputData":{
                try {
                    getData(request,response);
                } catch (SQLException | ParseException ex) {
                    Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            }
            case "Login":{
                try {
                    getDataUser(request,response);
                } catch (SQLException | ParseException ex) {
                    Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            }
            case "signup":{
                try{
                    saveDataUser(request,response);
                } catch (SQLException | ParseException ex) {
                Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            }
        }
    }

    public void DisplayActCalendar(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String usernm = this.email;
        List<Activity> listAct = ActivityDAO.getAll(usernm);
        List<Activity_JSON> listActJSON = new ArrayList<>();
        listAct.forEach((Activity act)->{
            Activity_JSON actJSON = new Activity_JSON(act.getActivity_ID(),act.getActivity_Name(),act.getTime_Start(),act.getTime_End());
            listActJSON.add(actJSON);
        });
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write(new Gson().toJson(listActJSON));
    }
    
    public void getUserProfile(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException, ServletException {
        String userP = this.email;
        request.setAttribute("name", userP);
        RequestDispatcher dispatcher = request.getRequestDispatcher("JSP_Prototyping/add_activity.jsp");
        dispatcher.include(request, response);
    }
    
    public void saveDataUser(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
        String username = request.getParameter("Name");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        
        User_Account user = new User_Account();
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);
        
        User_AccountDAO.save(user);
        response.sendRedirect("./Index.jsp");
    }
    
    public void getDataUser(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ParseException {
        
            this.email = request.getParameter("email");
            this.password = request.getParameter("password");
            
            User_Account user = User_AccountDAO.getUser(this.email, this.password);
            if (user.getEmail() == null ? email == null : user.getPassword().equals(password)){
                HttpSession session = request.getSession(true);
                session.setAttribute("email", email);
                //response.sendRedirect("./Home.jsp");
                PrintWriter out = response.getWriter();
                response.setContentType("text/html");  
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Hello " + request.getSession(false).getAttribute("email").toString() + "');");  
                out.println("location='./Home.jsp';");
                out.println("</script>");
            } else {
                //TODO : Send Message to Client User Not Found!
                PrintWriter out = response.getWriter();
                response.setContentType("text/html");  
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Wrong Email or Password!');");
                out.println("location='./Index.jsp';");
                out.println("</script>");
                //response.sendRedirect("./Index.jsp");
            }
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
            java.sql.Timestamp Departure_Time = new java.sql.Timestamp(dt.getTime());
            trav.setDeparture_Time(Departure_Time);
            
//            ArrayList<Integer> id = (ArrayList<Integer>) TravelDAO.getID();
//            int test = id.size() - 1;
//            Integer size = id.get(test);
//            int travID = size + 1;
//            trav.setTravel_ID(travID);
            
            TravelDAO.save(trav);
            
            Activity act = new Activity();
            String TIME_START = startDay + " " + startTime + ":00";
            String TIME_END = endDay + " " + endTime + ":00";
            SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date ts = sd.parse(TIME_START);
            java.util.Date te = sd.parse(TIME_END);
            java.sql.Timestamp time_start = new java.sql.Timestamp(ts.getTime());
            java.sql.Timestamp time_end = new java.sql.Timestamp(te.getTime());
            
            String spareTimex = "00:00:00";
            switch(spareTime){
                case "fivemins":{
                    spareTimex = "00:05:00";  
                    break;
                }
                case "tenmins":{
                    spareTimex = "00:10:00"; 
                    break;
                }
                case "fifteenmins":{
                    spareTimex = "00:15:00";
                    break;
                }
            }
            
            SimpleDateFormat tm = new SimpleDateFormat("HH:mm:ss");
            java.util.Date st = tm.parse(spareTimex);
            java.sql.Time tms = new java.sql.Time(st.getTime());
            
            act.setTime_Start(time_start);
            act.setTime_End(time_end);
            act.setSpare_Time(tms);
            act.setActivity_Name(activityName);
            
            int idT = TravelDAO.getLastID();
            act.setTravel_ID(idT);
            act.setEmail(this.email);
            
            ActivityDAO.save(act);
            
            //act.setSpare_Time(Spare_Time);
            response.sendRedirect("./Home.jsp");
    }
    
    private void responseJson(HttpServletResponse response, String strJson)
    {
        try 
        {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(strJson);
        } 
        catch (IOException ex) 
        {
            Logger.getLogger(Travner.class.getName()).log(Level.SEVERE, null, ex);
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
