<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="ingresso"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<ingresso:template>
		<jsp:body>
         <div class=" col-md-6 col-md-offset-3">
             <form action="/usuario/request" method="post">
                 <span class="text-danger">${param.error}</span>

                 <div class="form-group">
                     <label for="login">E-mail:</label>
                     <input id="login" type="text" name="email"
							class="form-control">
                 </div>

                 <button class="btn btn-primary" type="submit">Solicitar Acesso</button>
             </form>
         </div>
     </jsp:body>
	</ingresso:template>

</body>
</html>