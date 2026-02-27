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

                <!-- Product Image -->
                <img src="${pageContext.request.contextPath}/${product.imageUrl}"
                     alt="${product.name}"
                     class="product-image">

                <!-- Product Name -->
                <h3 class="product-name">${product.name}</h3>

                <!-- Product Description -->
                <p class="product-desc">${product.description}</p>

                <!-- Product Price -->
                <p class="product-price">₹ ${product.price}</p>

                <!-- Product Quantity -->
                <p class="product-stock">Available: ${product.quantity}</p>



            </div>

        </c:forEach>

        <!-- Message if no products -->
        <c:if test="${empty products}">
            <p>No products available at the moment.</p>
        </c:if>

    </div>

</section>

<%@ include file="footer.jsp" %>

</body>
</html>