<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Profile - ShopMate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<section class="profile-section">
    <div class="profile-box">
        <h2>My Profile</h2>

        <div class="profile-info">
            <p><strong>Full Name:</strong> ${customer.fullname}</p>
            <p><strong>Email:</strong> ${customer.email}</p>
            <p><strong>Username:</strong> ${customer.username}</p>
        </div>

        <div class="profile-actions">
            <a href="edit-profile" class="btn">Edit Profile</a>
            <a href="logout" class="btn logout-btn">Logout</a>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>