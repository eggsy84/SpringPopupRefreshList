<%--  

Copyright 2010 eggsylife.co.uk

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

    http:www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

--%>

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

