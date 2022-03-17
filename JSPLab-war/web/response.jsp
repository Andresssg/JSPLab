<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : 11 mar. 2022, 1:25:12
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
        <jsp:useBean id="mybean" scope="session" class="co.edu.unipiloto.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name"/>
        <jsp:setProperty name="mybean" property="edad" />
        <jsp:setProperty name="mybean" property="fechaDeNacimiento"/>
        <jsp:useBean id="clock" scope="session" class="java.util.Date"/>

        <c:choose>
            <c:when test="${clock.hours >= 6 && clock.hours < 12}">
                <h1>Buenos dias</h1>
            </c:when>
            <c:when test="${clock.hours >= 12 && clock.hours < 18}">
                <h1>Buenas tardes</h1>
            </c:when>
            <c:otherwise>
                <h1>Buenas noches</h1>
            </c:otherwise>
        </c:choose>

                <p>Los datos ingresados fueron:  <br>Nombre: <jsp:getProperty name="mybean" property="name" />
                    <br>Edad: <jsp:getProperty name="mybean" property="edad" />
                    <br>Fecha de nacimiento: <jsp:getProperty name="mybean" property="fechaDeNacimiento" />
                </p>

    </body>
</html>
