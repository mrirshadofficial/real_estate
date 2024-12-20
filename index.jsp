<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Real Estate Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to the Real Estate Management System</h1>
        <a href="properties.jsp" class="btn btn-primary">View Properties</a>
        <a href="register.jsp" class="btn btn-secondary">Register</a>
        <a href="login.jsp" class="btn btn-secondary">Login</a>
    </div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.Property" %>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Properties - Real Estate Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Available Properties</h1>
        <c:if test="${empty properties}">
            <p>No properties available at the moment.</p>
        </c:if>
        <c:forEach var="property" items="${properties}">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">${property.title}</h5>
                    <p class="card-text">${property.description}</p>
                    <p class="card-text">Price: ${property.price}</p>
                    <a href="property-details.jsp?id=${property.id}" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.model.Property" %>
<%@ page import="com.example.service.PropertyService" %>
<%
    int propertyId = Integer.parseInt(request.getParameter("id"));
    Property property = PropertyService.getPropertyById(propertyId); // Assume this method fetches the property
%>
<!DOCTYPE html>
<html>
<head>
    <title>Property Details - Real Estate Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>${property.title}</h1>
        <p>${property.description}</p>
        <p>Price: ${property.price}</p>
        <a href="book.jsp?id=${property.id}" class="btn btn-success">Book Viewing</a>
        <a href="properties.jsp" class="btn btn-secondary">Back to Properties</a>
    </div>
</body>
</html>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - Real Estate Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password
