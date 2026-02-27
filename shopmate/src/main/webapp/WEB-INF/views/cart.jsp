<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>ShopMate - Cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<section class="cart-section">

    <h1 class="cart-title">Your Cart 🛒</h1>

    <!-- ✅ If cart empty -->
	<c:if test="${not empty msg}">
	    <div class="success-msg">
	        ${msg}
	    </div>
	</c:if>

    <!-- ✅ If cart has items -->
    <c:if test="${not empty cartProducts}">
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Price (₹)</th>
                </tr>
            </thead>
            <tbody>

                <c:forEach var="product" items="${cartProducts}">
                    <tr>
                        <td>
							<img src="${pageContext.request.contextPath}/${product.imageUrl}"
							     class="cart-product-img"
							     alt="${product.name}">
                        </td>
                        <td>${product.name}</td>
                        <td>
                            ₹ <fmt:formatNumber value="${product.price}" type="number" minFractionDigits="2"/>
                        </td>
                    </tr>
                </c:forEach>

                <!-- ✅ Total Row -->
                <tr class="cart-total-row">
                    <td colspan="2"><strong>Total Bill</strong></td>
                    <td>
                        <strong>
                            ₹ <fmt:formatNumber value="${totalBill}" type="number" minFractionDigits="2"/>
                        </strong>
                    </td>
                </tr>

            </tbody>
        </table>
    </c:if>
	
</section>
<div class="buy-now-container">
    <a href="${pageContext.request.contextPath}/buy-now" class="buy-now-btn">
        🧾 Buy Now
    </a>
</div>

</body>
</html>