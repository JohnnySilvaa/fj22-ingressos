<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="ingresso"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<ingresso:template>
		<jsp:body>
         <form action="/usuario/cadastrar" method="post">
             <span class="text-danger">${param.error}</span>

             <input type="hidden" name="token.uuid"
					value="${confirmacaoLoginForm.token.uuid}">
             <input type="hidden" name="token.email"
					value="${confirmacaoLoginForm.token.email}">

             <div class="form-group">
                 <label for="password">Senha:</label>
                 <input id="password" type="password" name="password"
						class="form-control">
             </div>

             <div class="form-group">
                 <label for="confirmPassword">Senha:</label>
                 <input id="confirmPassword" type="password"
						name="confirmPassword" class="form-control">
             </div>

             <button class="btn btn-primary" type="submit">Cadastrar</button>

         </form>
     </jsp:body>
	</ingresso:template>

</body>
</html>