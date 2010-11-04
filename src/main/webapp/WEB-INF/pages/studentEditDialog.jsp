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
				<td align="center" colspan="2" style="color: red; font-size: 0.8em;">
					<form:errors path="firstName" />
				</td>
			</tr>
			<tr>
				<td>Last name</td>
				<td>
					<form:input path="lastName" />
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2" style="color: red; font-size: 0.8em;">
					<form:errors path="lastName" />
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