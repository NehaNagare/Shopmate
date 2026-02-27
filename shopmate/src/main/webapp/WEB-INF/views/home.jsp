<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ShopMate - Home</title>

    <!-- CSS Link -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

    <!-- Font Awesome -->
    <link rel="stylesheet"
     href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<%@ include file="header.jsp" %>

<section class="home-container">

    <div class="welcome-box">
        <h1>Welcome to ShopMate Home Page</h1>
        <a href="shop" class="shop-btn">
            <i class="fa fa-shopping-cart"></i> Let's Shop Now →
        </a>
    </div>

    <div class="info-card">
        <h2><i class="fa fa-store"></i> Your One-Stop Shopping App</h2>
        <p>Here are your shopping products...</p>

        <ul>
            <li><i class="fa fa-tv"></i> Premium Electronics</li>
            <li><i class="fa fa-shirt"></i> Fashion & Lifestyle</li>
            <li><i class="fa fa-couch"></i> Home Appliances</li>
            <li><i class="fa fa-mobile-screen"></i> Mobiles & Accessories</li>
            <li><i class="fa fa-basket-shopping"></i> Daily Essentials</li>
        </ul>
    </div>

</section>

</body>
</html>