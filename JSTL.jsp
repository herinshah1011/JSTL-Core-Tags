<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>JSTL Core Tags</title>
</head>
<body>
	<h1><b><c:out value=" Welcome to JSTL Core Tags "/><br><br></b></h1>
	
	
	<c:set var="Marks" scope="session" value="92"/>  
	<h3>Before Remove Marks = <c:out value="${Marks}"/></h3>
	
	
	<c:remove var="Marks"/>
	<h3>After Remove Marks = <c:out value="${Marks}"/></h3>   
	
	
	<c:catch var ="catchtheException">  
   		<% int x = 1/0;%>  
	</c:catch>  
  
	
	<c:if test = "${catchtheException != null}">  
   		<p>The type of exception is : ${catchtheException} <br /></p>  
	</c:if>  
	
	
	<c:choose>  
    
    	<c:when test="${Marks<50}">  
       		Marks are not good.  
   		</c:when>  
    
    	<c:when test="${Marks>80}">  
        	Marks are very good.  
    	</c:when>  
    
    	<c:otherwise>  
       		Income is undetermined...  
    	</c:otherwise>  
	
	</c:choose> 
	
	
	<c:forEach var="j" begin="1" end="3">  
   		Item <c:out value="${j}"/><p>  
	</c:forEach>
	
	
	<c:forTokens items="Herin-Pathey-Maulin-Chinmay-Devarsh" delims="-" var="name">  
   		<c:out value="${name}"/><p>  
	</c:forTokens>
	
	
	<c:url value="/JSTL.jsp" var="completeURL">  
 		<c:param name="sessionid" value="1011"/>  
 		<c:param name="user" value="Herin"/>  
	</c:url>
	<c:out value="${completeURL}"/> <br><br><br><br>    

	
	<c:import var="data" url="http://localhost:9090/sample%20application/"/>  
	<c:out value="${data}"/>
	
	
</body>
</html>