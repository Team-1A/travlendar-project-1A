/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ActivityDAO;
import Model.Activity;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author ACER
 */
@WebServlet(name = "CalendarController", urlPatterns = {"/Calendar"})
public class CalendarController extends HttpServlet {

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
            out.println("<title>Servlet CalendarController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CalendarController at " + request.getContextPath() + "</h1>");
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
        try {
                calendar(request, response);
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
        processRequest(request, response);
    }
    
    public void calendar(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException, JSONException {
        List<Activity> listActivity = ActivityDAO.getAll();
        JSONArray array = new JSONArray();
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss.SSS");
        SimpleDateFormat stf = new SimpleDateFormat("HH:mm");
        sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
        
//        for (int i = 0; i < listActivity.size(); i++) {
//            JSONObject json = new JSONObject();
//            json.put("title", listActivity.get(i).getEventName());
//            json.put("start", stf.format(listActivity.get(i).getStartEventTime()));
//            json.put("end", stf.format(listActivity.get(i).getEndEventTime()));
//            json.put("date", sdf.format(listActivity.get(i).getEventDate()));
//            array.put(json); 
//        }
        
        listActivity.forEach((Activity activity)->{
            try {
                JSONObject json = new JSONObject();
                json.put("title", activity.getEventName());
                json.put("start", stf.format(activity.getStartEventTime()));
                json.put("end", stf.format(activity.getEndEventTime()));
                json.put("date", sdf.format(activity.getEventDate()));
                array.put(json);
            } catch (JSONException ex) {
                Logger.getLogger(CalendarController.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        
        String jsonEvent = array.toString().replace("\\[(.*?)\\]", "$1"); 
        request.setAttribute("listEvent", listActivity);
        request.setAttribute("listEventJson", jsonEvent);
        request.setAttribute("module", "dashboard");
        request.setAttribute("content", "calendar");
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
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
