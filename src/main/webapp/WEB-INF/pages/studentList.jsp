<%@ include file="/WEB-INF/pages/include.jsp" %>


<div id="studentsList">
	<table border="1" width="600px"">
		<thead>
			<tr>
				<th width="33%" align="left">
					Student ID
				</th>
				<th width="33%" align="left">
					First name
				</th>
				<th width="33%" align="left"> 
					Last name
				</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${students}">
				<tr>
					<td>
						${student.studentNumber}
					</td>
					<td>
						${student.firstName}
					</td>
					<td>
						${student.lastName}
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<a href="<c:url value='/students/edit' />" id="createStudentLink">
		Create new student
	</a>
	
	<script type="text/javascript">
		dojo.addOnLoad(function() {
			Spring.addDecoration(new Spring.AjaxEventDecoration({
				elementId: "createStudentLink",
				event: "onclick",
				popup:true,
				params: {fragments: "studentsList, studentEditDialog"}
			}));
		});
	</script>
	
</div>

