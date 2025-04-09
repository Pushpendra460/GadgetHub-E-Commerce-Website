<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title><%=AppDetails.appName%> Application</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<link rel="stylesheet" href="mycss.css">
</head>
<body style="background-color: #E6F9E6;">

	<jsp:include page="header.jsp" />
<% /* Java Code */
            %>
	<div class="text-center h3 text-primary m-3"><%=/* Java Code */%></div>
<%/* Java Code */%>
	<!-- <script>document.getElementById('mycart').innerHTML='<i data-count="20" class="fa fa-shopping-cart fa-3x icon-white badge" style="background-color:#333;margin:0px;padding:0px; margin-top:5px;"></i>'</script>
 -->
	<!-- Start of Product Items List -->
	<div class="container">
		<div class="row text-center">

			<%
            /* Java Code */
			%>
			<div class="col-sm-4">
				<div class="thumbnail mt-3 mb-3">
					<img src="./ShowImageServlet?pid=<%=/* Java Code */%>" alt="Product"
						style="height: 150px; max-width: 180px" class="mt-3">
					<p class="productname"><%=/* Java Code */%>
					</p>
					<%
					/* Java Code */
					%>
					<p class="productinfo"><%=/* Java Code */%>..
					</p>
					<p class="price">
						Rs
						<%=/* Java Code */%>
					</p>
					<form method="post">
						<%
						/* Java Code */
						%>
						<button type="submit"
							formaction="./AddToCartServlet?uid=<%=/* Java Code */%>&pid=<%=/* Java Code */%>&pqty=1"
							class="btn btn-warning">Add to Cart</button>
						&nbsp;&nbsp;&nbsp;
						<button type="submit"
formaction="./AddToCartServlet?uid=<%=/* Java Code */%>&pid=<%=/* Java Code */%>&pqty=1&action=buy"
							formaction="cartDetails.jsp"
							class="btn btn-primary">Buy Now</button>
						<%
						/* Java Code */
						%>
						<button type="submit"
							formaction="./AddToCartServlet?uid=<%=/* Java Code */%>&pid=<%=/* Java Code */%>&pqty=0"
							class="btn btn-danger">Remove From Cart</button>
						&nbsp;&nbsp;&nbsp;
						<button type="submit" formaction="cartDetails.jsp"
							class="btn btn-success">Checkout</button>
						<%
						/* Java Code */
						%>
					</form>
					<br />
				</div>
			</div>

			<%
			}/* Java Code */
			%>

		</div>
	</div>
	<!-- ENd of Product Items List -->


	<%@ include file="footer.jsp"%>

</body>
</html>
