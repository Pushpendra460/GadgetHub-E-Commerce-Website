<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="in.gadgethub.dao.impl.*, in.gadgethub.pojo.*,in.gadgethub.dao.*,java.util.*"%>
<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Admin Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <link rel="stylesheet" href="mycss.css">
        <link rel="stylesheet" href="css/changes.css">
    </head>
    <body style="background-color: #E6F9E6;">


        <jsp:include page="header.jsp" />

        <div class="text-center text-primary h3 m-3">UnShipped Orders</div>
        <div class="container-fluid">
            <div class="table-responsive ">
                <table class="table table-hover table-sm">
                    <thead>
                        <tr>
                            <th>TransactionId</th>
                            <th>ProductId</th>
                            <th>User Email Id</th>
                            <th>Address</th>
                            <th>Quantity</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            List<OrderPojo> orders = (List<OrderPojo>) request.getAttribute("orders");
                            Map<String,String> userIdMapList = (HashMap<String,String>) request.getAttribute("userIdMapList");
                            Map<String,String> addressMapList = (HashMap<String,String>) request.getAttribute("addressMapList");
                            int count = 0;
                            for (OrderPojo order : orders) {
                                String transId = order.getOrderId();
                                String prodId = order.getProdId();
                                int quantity = order.getQuantity();
                                int shipped = order.getShipped();
                                if (shipped == 0) {
                                    count++;
                        %>

                        <tr>
                            <td><%=transId%></td>
                            <td><a href="./updateProduct.jsp?prodid=<%=prodId%>"><%=prodId%></a></td>
                            <td><%=userIdMapList.get(transId)%></td>
                            <td><%=addressMapList.get(transId)%></td>
                            <td><%=quantity%></td>
                            <td>READY_TO_SHIP</td>
                            <td><a
                                    href="ShipmentServlet?orderid=<%=order.getOrderId()%>&amount=<%=order.getAmount()%>&userid=<%=userIdMapList.get(transId)%>&prodid=<%=order.getProdId()%>"
                                    class="btn btn-warning">Ship Now</a></td>
                        </tr>

                        <%
                                }
                            }
                        %>
                        <%
                            if (count == 0) {
                        %>
                        <tr style="background-color: grey; color: white;">
                            <td colspan="7" style="text-align: center;">No Items
                                Available</td>

                        </tr>
                        <%
                            }
                        %>

                    </tbody>
                </table>
            </div>
        </div>

        <%@ include file="footer.jsp"%>
    </body>
</html>
