<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="ingresso" tagdir="/WEB-INF/tags/" %>

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib tagdir="/WEB-INF/tags/" prefix="ingresso" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ingresso:template>
     <jsp:body>
         <h3>Usuário criado com sucesso!</h3>

         <p>
             Enviamos um e-mail com um link de confirmação para <strong>${usuario.email}</strong>.<br/>

             Por favor confirme a criação do seu usuário, para liberar seu acesso.
         </p>

     </jsp:body>
 </ingresso:template>