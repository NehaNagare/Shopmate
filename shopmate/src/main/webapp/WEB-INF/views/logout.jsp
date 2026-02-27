<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact - ShopMate</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<section class="form-section">
    <div class="form-box">
        <h2>Contact Us</h2>

        <form action="contact" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Message" rows="4"></textarea>
            <button class="btn">Send</button>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>