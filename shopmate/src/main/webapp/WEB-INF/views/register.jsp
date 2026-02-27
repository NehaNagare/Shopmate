<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Register - ShopMate</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<section class="form-section">
    <div class="form-box">
        <h2>Create Account</h2>

        <form action="/register-customer" method="post">
            <input type="text" name="fullname" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button class="btn">Register</button>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>