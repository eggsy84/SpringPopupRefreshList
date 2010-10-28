<%@ include file="/WEB-INF/pages/include.jsp" %>


<div id="studentEditDialog">
	<p>Student Edit Dialog</p>
	
	<form:form id="studentForm" modelAttribute="student">
		<table>
			<tr>
				<td>Student number</td>
				<td>
					<form:input path="studentNumber" />
				</td>
			</tr>
			<tr>
				<td>First name</td>
				<td>
					<form:input path="firstName" />
				</td>
			</tr>
			<tr>
				<td>Last name</td>
				<td>
					<form:input path="lastName" />
				</td>
			</tr>
		</table>
		<input type="submit" id="saveStudentButton" value="Save student" />
	</form:form>
	
	<script type="text/javascript">
		dojo.addOnLoad(function() {
			Spring.addDecoration(new Spring.AjaxEventDecoration({
    			elementId:'saveStudentButton', 
    			event:'onclick',
    			formId:'studentForm',
    			params: {fragments: "studentsList,studentEditDialog"}
    		}));
		});
	</script>
</div>