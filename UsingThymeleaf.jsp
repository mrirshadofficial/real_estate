<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Real Estate Management</title>
</head>
<body>
    <h1>Welcome to the Real Estate Management System</h1>
    <a th:href="@{/properties}">View Properties</a>
</body>
</html>
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        return "index"; // This will resolve to src/main/resources/templates/index.html
    }

    @GetMapping("/properties")
    public String properties(Model model) {
        // Add properties to the model
        return "property-list"; // This will resolve to src/main/resources/templates/property-list.html
    }
}
spring.thymeleaf.cache=false
<dependency>
    <groupId>org.apache.tomcat.embed</groupId>
    <artifactId>tomcat-embed-jasper</artifactId>
</dependency>
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
</dependency>
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Real Estate Management</title>
</head>
<body>
    <h1>Welcome to the Real Estate Management System</h1>
    <a href="${pageContext.request.contextPath}/properties">View Properties</a>
</body>
</html>
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index"; // This will resolve to /WEB-INF/jsp/index.jsp
    }

    @GetMapping("/properties")
    public String properties() {
        return "property-list"; // This will resolve to /WEB-INF/jsp/property-list.jsp
    }
}
