<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<%-- <h2> ${item } </h2> --%>
		<h1>Food</h1>
		<!-- <form action="/item">
			<input type="text" value="${item}" name="item"
				placeholder="Category"> <input class="btn btn-primary"
				type="submit" value="Search">

			<c:if test="${ not empty category }">
				<!-- The if statement determines whether the clear link shows on the page or not -->
				<!-- <a href="/food" class="btn btn-secondary">Clear</a> -->
			</c:if>

		</form> -->
		<table class="table">
			<thead>
				<tr>
					<th>Item</th>
					<th>Description</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${item}" var="f">
					<tr>
						<td>${f.item}</td>
						<td>${f.description}</td>
						<td>${f.quantity}</td>
						<td>${f.price}</td>
						<!-- <td><a class="btn btn-primary" href="/update?id=${f.id}">Edit</a></td>
						<td><a class="btn btn-primary" href="/delete?id=${f.id}">Remove</a></td> -->
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!--  <a href="add-food" class="btn btn-secondary">Add</a> -->

	</div>
</body>
</html>


</body>
</html>