/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mappings.HibernateUtil;
import mappings.Sales;
import mappings.SalesReturn;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Sampath Dhananjaya
 */
@WebServlet(name = "addSalesReturn", urlPatterns = {"/addSalesReturn"})
public class addSalesReturn extends HttpServlet {

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
        String return_qty=request.getParameter("return_qty");
        String note=request.getParameter("note");
        String sales_id=request.getParameter("salesID");
        
        if(sales_id!=null){
            Session sess=HibernateUtil.getSessionFactory().openSession();
            Transaction tx=sess.beginTransaction();
            SalesReturn sale_return=new SalesReturn();
            sale_return.setNote(note);
            sale_return.setDate(return_qty); // quantity is saved in the date field temporaliy
            Sales sale=(Sales) sess.load(Sales.class, Integer.parseInt(sales_id));
            sale_return.setSales(sale);
            sess.save(sale_return);
            tx.commit();
            response.sendRedirect("sales_history.jsp?msg=Transaction submitted !");
        }else{
            response.sendRedirect("sales_history.jsp?err=Error occurred !");
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
