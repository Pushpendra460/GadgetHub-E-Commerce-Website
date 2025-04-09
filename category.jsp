<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="in.gadgethub.dao.impl.ProductDaoImpl,java.util.*" %>
<%
    
    String userType = (String) session.getAttribute("userType");
    String targetServlet = "LandingServlet"; 
    
    if (userType != null && userType.equals("admin")) {
        targetServlet = "AdminViewProductServlet"; 
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Categories of the Products</title>
</head>
<body>
    <li class="nav-item dropdown" style="position: relative">
        <a class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Category
        </a>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <%
                ProductDaoImpl productDao = new ProductDaoImpl();
                List<String> productTypes = productDao.getAllProductsType();
                for (String type : productTypes) {
                    String formattedType = type.substring(0, 1).toUpperCase() + type.substring(1).toLowerCase();
            %>
            <li><a href="<%= targetServlet %>?type=<%= type %>" class="dropdown-item"><%= formattedType %></a></li>
            <%
                }
            %>
        </ul>
    </li>
</body>
</html>
