/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Direction;
import Model.Legs;
import Model.Routes;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hydrolyze
 */
@WebServlet(name = "DirectionController", urlPatterns = {"/DirectionController"})
public class DirectionController extends HttpServlet {

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
            out.println("<title>Servlet DirectionController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DirectionController at " + request.getContextPath() + "</h1>");
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
        String start = request.getParameter("Orig");
        String destination = request.getParameter("Dest");
        
        String urlConnection = "https://maps.googleapis.com/maps/api/directions/json?origin=" + start + "&" + "destination=" + destination + "&alternatives=true&key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s";
        //Connection to website
        URL url = new URL(urlConnection);
        HttpURLConnection rqst = (HttpURLConnection) url.openConnection();
        //JSON
        JsonParser jsonPerser = new JsonParser();
        JsonElement jsonParsed = jsonPerser.parse(new InputStreamReader((InputStream) rqst.getContent()));
        JsonObject jsonObj = jsonParsed.getAsJsonObject();
        //GSON
        Gson gson = new Gson();
        Direction direction = gson.fromJson(jsonObj, Direction.class);
        
        Routes[] routes = direction.getRoutes();
        Legs[] legs = routes[0].getLegs();
        String duration = legs[0].getDuration().getText();
        
        PrintWriter out = response.getWriter();
        
        out.print(duration);
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
