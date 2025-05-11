<%@ include file="common/header.jspf" %>
<body style = "background-image: url('/images/SoloLeveling.jpeg'); background-size: cover; background-position: center center; height: 100vh; margin: 0;">
<%@ include file="common/navigation.jspf" %>
<div class="container" style="color: white">
	<h1>Your Tasks </h1>
	<table class="table" style="color: white" >
		<thead>
			<tr>
				
				<th>Description</th>
				<th>Target Date</th>
				<th>Is Done?</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					
					<td>${todo.description}</td>
					<td>${todo.targetDate}</td>
					<td>${todo.done}</td>
					<td> <a href="delete-todo?id=${todo.id}" class = "btn btn-warning">Delete</a> </td>
					<td> <a href="update-todo?id=${todo.id}" class = "btn btn-success">Update</a> </td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href = "add-todo" class = "btn btn-success">Add Todo</a>
</div>
</body>	
		
<%@ include file="common/footer.jspf" %>
		