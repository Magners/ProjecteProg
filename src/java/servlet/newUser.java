/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.NewSessionBean;
import entities.*;
import java.io.IOException;
import static java.lang.Boolean.*;
 import java.util.Date;
 import javax.ejb.EJB;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author ferran
 */
public class newUser extends HttpServlet {
    @EJB NewSessionBean ejb;
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
        
             if ("New".equals(request.getParameter("newuser"))) {
                String nombreusuario=request.getParameter("nombre_usuario");
                String password=request.getParameter("password");
                String correo=request.getParameter("correo");
                String direccion=request.getParameter("direccion");
                String telefono=request.getParameter("telefono");
                Integer telf=Integer.parseInt(telefono);
                String departamento=request.getParameter("departamento");
                Usuario u=new Usuario(nombreusuario,password,correo,direccion,telf,departamento);
            
             String msg;
             Boolean succes;
             if (ejb.insertUsuario(u)) {
                 msg = "Usuario registrado correctamente";
                 succes=TRUE;
             } else {
                 msg = "no se ha podido regitrar";
                 succes=FALSE;
             }
             request.setAttribute("msg", msg);
             request.setAttribute("succes",succes);
             request.getRequestDispatcher("/final.jsp").forward(request, response);
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
