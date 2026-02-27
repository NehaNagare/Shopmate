<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>ShopMate - Products</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<section class="products-section">

    <h1 class="products-title">Our Products</h1>

    <div class="products-container">

        <c:forEach var="product" items="${products}">

            <div class="product-card">
				<img src="${pageContext.request.contextPath}/${product.imageUrl}"
				     class="cart-product-img"
				     alt="${product.name}">


                <h3>${product.name}</h3>

                <p class="desc">${product.description}</p>

                <p class="price">₹ ${product.price}</p>

                <p class="stock">Available: ${product.quantity}</p>

               <a href="${pageContext.request.contextPath}/add-to-cart/${product.id}" class="buy-btn">Add to Cart</a>
			   

            </div>

        </c:forEach>

    </div>

</section>

<%@ include file="footer.jsp" %>

</body>
</html>