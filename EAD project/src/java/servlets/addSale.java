/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mappings.HibernateUtil;
import mappings.Sales;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Sampath Dhananjaya
 */
@WebServlet(name = "addSale", urlPatterns = {"/addSale"})
public class addSale extends HttpServlet {

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
        String cus_name=request.getParameter("cus_name");
        String eng_id=request.getParameter("eng_id");
        String eng_category=request.getParameter("eng_category");
        String eng_model=request.getParameter("eng_model");
        String cc=request.getParameter("cc");
        String m_type=request.getParameter("m_type");
        String cus_contact=request.getParameter("cus_contact");
        String qty=request.getParameter("qty");
        String discount=request.getParameter("discount");
        String price=request.getParameter("price");
        
        Session sess=HibernateUtil.getSessionFactory().openSession();
        Transaction tx=sess.beginTransaction();
        Sales sale=new Sales();
        sale.setCusName(cus_name);
        sale.setProductId(eng_id);
        sale.setEngCategory(eng_category);
        sale.setModel(eng_model);
        sale.setCc(cc);
        sale.setMType(m_type);
        sale.setContactNo(cus_contact);
        sale.setQuantity(qty);
        sale.setDiscount(discount);
        sale.setPrice(price);
        sale.setDate(new Date().toLocaleString());
        sess.save(sale);
        tx.commit();
        response.sendRedirect("add_sales.jsp?msg=Transaction successfully submitted !");
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
