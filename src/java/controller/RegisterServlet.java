/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.RegisterForm;
import model.RegisterHandler;

/**
 *
 * @author WilliamPC
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
            out.println("<title>Servlet RegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String confpass = request.getParameter("ConfPass");
        String ageString = request.getParameter("Age");
        String email = request.getParameter("Email");
        String sex = request.getParameter("sex");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String year = request.getParameter("year");
        HttpSession session = request.getSession();
        RegisterForm reg = RegisterHandler.getInstance().check(username, password, confpass, ageString, email, sex, month, day, year);
        
        System.out.println("Username: " + username);
        System.out.println("Password: " + password);
        System.out.println("confpass: " + confpass);
        System.out.println("age: " + ageString);
        System.out.println("email: " + email);
        System.out.println("sex: " + sex);
        System.out.println("month: " + month);
        System.out.println("day: " + day);
        System.out.println("year: " + year);
        
        if(reg != null){
            System.out.println("Not null");
            Cookie userCookie = new Cookie("username", reg.getUsername());
            Cookie ageCookie = new Cookie("age", Integer.toString(reg.getAge()));
            RegisterHandler.getInstance().register(reg);
            response.sendRedirect("registersuccess.jsp");
        }
        else{
            System.out.println("null");
            response.sendRedirect("registerfail.jsp");
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
