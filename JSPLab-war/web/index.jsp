<%-- 
    Document   : index
    Created on : 11 mar. 2022, 1:25:04
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingrese sus datos</h1>
        <form name="Formato de entrada" action="response.jsp">
            <label for="name">Nombre: </label><input type="text" name="name" id="name" required="true" placeholder="Ingrese su nombre"><br>
            <label for="fechaDeNacimiento">Fecha de nacimiento: </label><input type="date" name="fechaDeNacimiento" id="fechaDeNacimiento" required="true"><br>
            <label for="edad">Edad: </label><input type="number" name="edad" id="edad" required="true" min="0" max="100"><br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
