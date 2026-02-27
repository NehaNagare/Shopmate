<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Login - ShopMate</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

	<c:if test="${not empty msg}">
	    <p style="color:red; text-align:center;">${msg}</p>
	</c:if>
	
	
<%@ include file="header.jsp" %>

<section class="form-section">
    <div class="form-box">
        <h2>Login</h2>

       <form action="verify-login" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button class="btn">Login</button>
        </form>

        <!-- Register Link Added -->
        <p class="register-text">
            Not Registered?
            <a href="${pageContext.request.contextPath}/register">
                Register Here
            </a>
        </p>

    </div>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>