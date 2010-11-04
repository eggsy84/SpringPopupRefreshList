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

<%@ include file="/WEB-INF/pages/include.jsp"%>

<html>
	<head>
		<script type="text/javascript" src="<c:url value="/resources/dojo/dojo.js" />"> </script>
		<script type="text/javascript" src="<c:url value="/resources/spring/Spring.js" />"> </script>
		<script type="text/javascript" src="<c:url value="/resources/spring/Spring-Dojo.js" />"> </script>
		<link type="text/css" rel="stylesheet" href="<c:url value='/resources/dijit/themes/tundra/tundra.css' />" />
		
		<title>Spring-JS Edit Dialog and Partial JS Example</title>
		
	</head>

	<body class="tundra">
	
		<p>Spring Edit Dialog and Partial Content Update Tutorial</p>
		
		<tiles:insertAttribute name="content" />
	</body>
</html>