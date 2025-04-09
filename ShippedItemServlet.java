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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShippedItemServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // DAO instances
        OrderDAO orderDAO = new OrderDAOImpl();
        UserDao userDAO = new UserDaoImpl();
        
        // Fetch all orders
        List<OrderPojo> orders = orderDAO.getAllOrders();

        // Maps to store user details
        Map<String, String> userNames = new HashMap<>();
        Map<String, String> userAddresses = new HashMap<>();

        for (OrderPojo order : orders) {
            if (order.getShipped() != 0) { // Only process shipped orders
                String userEmail = new TransactionDAOImpl().getUserId(order.getOrderId());
                UserPojo user = userDAO.getUserDetails(userEmail);

                if (user != null) {
                    userNames.put(order.getOrderId(), user.getUsername());
                    userAddresses.put(order.getOrderId(), user.getAddress());
                }
            }
        }

        // Set attributes to forward data to JSP
        request.setAttribute("orders", orders);
        request.setAttribute("user_Id", userNames); // changed to user_Id as per the JSP
        request.setAttribute("user_address", userAddresses); // changed to user_address as per the JSP

        // Forward to shippedOrders.jsp
        request.getRequestDispatcher("shippedItems.jsp").forward(request, response);
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
