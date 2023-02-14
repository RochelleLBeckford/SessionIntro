<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
        <!-- ~ Java equivalent of Jinja 
            -> take data from controller and have it render on my view 
            -> give it a value attribute
            -> then what we want to render on page
        -->
        <div class="container d-flex justify-content-center border border-5 mt-5">
            <!-- <c:out value="${name}" ></c:out> -->
            <!-- Survey part -> Form -->
            <card>
                <card-body>
                    <form action="/surveys" method="POST">
                        <div>
                            <label>Name:</label>
                            <input type="text" name="name">
                        </div>
                    
                        <div>
                            <label>Location:</label>
                            <input type="text" name="location">
                        </div>
                        <input type="submit" value="login">
                    </form>
                </card-body>
            </card>
        </div>

</body>
</html>