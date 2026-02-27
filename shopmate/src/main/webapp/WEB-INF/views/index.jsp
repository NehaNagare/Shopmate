<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ShopMate - Welcome</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<section class="hero">
    <div class="hero-content">
        <h1>Welcome to ShopMate</h1>
        <p>Your One-Stop Shopping Platform</p>
        <a href="${pageContext.request.contextPath}/login" class="btn">
            Let's Login →
        </a>
    </div>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>