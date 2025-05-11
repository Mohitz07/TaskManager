		<%@ include file="common/header.jspf" %>
		<body style = "background-image: url('/images/SoloLeveling.jpeg'); background-size: cover; background-position: center center; height: 100vh; margin: 0">
		<%@ include file="common/navigation.jspf" %>
		
		<div class="container" style = "color: white">		<!-- this makes description very well centered -->
			<h1>Enter Todos Details</h1>
			
			<form:form method = "post" modelAttribute = "todo">
			
				<fieldset class= "mb-3">
					<form:label path = "description">Description</form:label>
					<form:input type = "text" path = "description" required = "required"/>
					<form:errors path = "description" cssClass="text-warning"/>
				</fieldset>
				
				<fieldset class= "mb-3">
					<form:label path = "targetDate">targetDate</form:label>
					<form:input type = "text" path = "targetDate" required = "required"/>
					<form:errors path = "targetDate" cssClass="text-warning"/>
				</fieldset>
				
				<form:input type = "hidden" path = "id"/>
					
				<form:input type = "hidden" path = "done"/>
					
				<input type = "submit" class = "btn btn-success"/>
			</form:form>
			
		</div>	
		</body> 
		
<%@ include file="common/footer.jspf" %>


<script type="text/javascript">
$('#targetDate').datepicker({
	format: 'yyyy-mm-dd'
});
</script>
