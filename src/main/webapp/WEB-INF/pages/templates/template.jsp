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