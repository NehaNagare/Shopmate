<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>ShopMate Invoice</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }
        .invoice-box {
            width: 70%;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border: 1px solid #ddd;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #1976d2;
            color: white;
        }
        .total-row {
            font-weight: bold;
            font-size: 18px;
        }
        .print-btn {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="invoice-box">

    <h2>ShopMate Invoice</h2>
    <p><strong>Bill No:</strong> ${billNumber}</p>
    <p><strong>Date:</strong> ${billDate}</p>

    <table>
        <tr>
            <th>Product Name</th>
            <th>Price (₹)</th>
        </tr>

        <c:forEach var="product" items="${cartList}">
            <tr>
                <td>${product.name}</td>
                <td>₹${product.price}</td>
            </tr>
        </c:forEach>

        <tr class="total-row">
            <td>Total Amount</td>
            <td>₹${totalAmount}</td>
        </tr>
    </table>

    <div class="print-btn">
        <button onclick="window.print()">Print Receipt</button>
    </div>

</div>

</body>
</html>