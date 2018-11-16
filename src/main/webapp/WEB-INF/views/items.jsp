<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coffee Drinks List</title>
</head>
<body>
	<h1>Coffee Drinks Menu</h1>
	<!-- <form>  -->
		<!-- <input name="category" placeholder="Category" />  -->
		<!-- <button>Filter</button> -->
	<!-- </form> -->
	<table class="table">
	
		<!-->  <tr> <-->
			<!-- <th>item</th>  -->
			<!-- <th>description</th>  -->
			<!-- <th>price</th>  -->
			
			<c:forEach var="i" items="${itemslist}">
				<tr>
					<td>${i.name}</td>
					<td>${i.description}</td>
					<td>${i.price}</td>

					<td><a href="/food/update?id=${items.id }"	class="btn btn-light btn-sm">Update</a> 
						<a href="/food/delete?id=${items.id }" class="btn btn-light btn-sm">Remove</a>
					</td>
				</tr>
			</c:forEach>
	</table>
	<br>
	<!-- <a class="btn btn-secondary" href="/food/create">Add To Coffee Drink List</a>
	<form action="add-drink">
		Name:<input name="name"></input> Description:<input name="description"></input>
		Price:<input name="price"></input>

		<button>Add</button>  -->

	</form>
</body>
</html>