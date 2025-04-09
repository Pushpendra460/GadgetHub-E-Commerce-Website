/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.servlet;

import in.gadgethub.dao.OrderDAO;
import in.gadgethub.dao.UserDao;
import in.gadgethub.dao.impl.OrderDAOImpl;
import in.gadgethub.dao.impl.TransactionDAOImpl;
import in.gadgethub.dao.impl.UserDaoImpl;
import in.gadgethub.pojo.OrderPojo;
import in.gadgethub.pojo.UserPojo;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class UnshippedItemServlet extends HttpServlet {

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
        OrderDAO orderDAO = new OrderDAOImpl();
        UserDao userDAO = new UserDaoImpl();

        // Fetch all orders
        List<OrderPojo> orders = orderDAO.getAllOrders();
        Map<String, String> userEmails = new HashMap<>();
        Map<String, String> userAddress = new HashMap<>();

        for (OrderPojo order : orders) {
            if (order.getShipped() == 0) {
                String userEmail = new TransactionDAOImpl().getUserId(order.getOrderId());
                UserPojo user = userDAO.getUserDetails(userEmail); // Fetch user details

                if (user != null) {
                    userEmails.put(order.getOrderId(), user.getUseremail());
                    userAddress.put(order.getOrderId(), user.getAddress());
                }
            }
        }

        // Set attributes to forward data to JSP
        request.setAttribute("orders", orders);
        // changed to user_address as per the JSP
        request.setAttribute("userIdMapList", userEmails); // changed to user_Id as per the JSP
        request.setAttribute("addressMapList", userAddress);
        // Forward to shippedOrders.jsp
        RequestDispatcher rd = request.getRequestDispatcher("unShippedItems.jsp");
        rd.forward(request, response);
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
