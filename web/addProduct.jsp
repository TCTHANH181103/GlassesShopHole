<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <div class="flex justify-center items-center h-screen">
        <div class="bg-white p-8 rounded-lg shadow-md w-full max-w-md">
            <h1 class="text-2xl font-bold mb-4">Add Product</h1>
            <form action="AddProductServlet" method="post" enctype="multipart/form-data">
                <div class="mb-4">
                    <label for="productName" class="block font-medium text-gray-700 mb-2">Product Name:</label>
                    <input type="text" id="productName" name="productName"
                           class="w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                           required>
                </div>
                <div class="mb-4">
                    <label for="productDescription" class="block font-medium text-gray-700 mb-2">Product Description:</label>
                    <textarea id="productDescription" name="productDescription" rows="3"
                              class="w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                              required></textarea>
                </div>
                <div class="mb-4">
                    <label for="productPrice" class="block font-medium text-gray-700 mb-2">Product Price:</label>
                    <input type="number" id="productPrice" name="productPrice" step="0.01"
                           class="w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                           required>
                </div>
                <div class="mb-4">
                    <label for="productDiscount" class="block font-medium text-gray-700 mb-2">Discount (%):</label>
                    <input type="number" id="productDiscount" name="productDiscount" min="0" max="100"
                           class="w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                           required>
                </div>
                <div class="mb-4">
                    <label for="discountedPrice" class="block font-medium text-gray-700 mb-2">Discounted Price:</label>
                    <input type="number" id="discountedPrice" name="discountedPrice" step="0.01"
                           class="w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                           readonly>
                </div>
                <div class="mb-4">
                    <label for="productImage" class="block font-medium text-gray-700 mb-2">Product Image:</label>
                    <input type="file" id="productImage" name="productImage"
                           class="w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                           required>
                </div>
                <button type="button" onclick="calculateDiscountedPrice()"
                        class="bg-indigo-500 text-white font-medium py-2 px-4 rounded-md hover:bg-indigo-600 focus:outline-none focus:ring-2 focus:ring-indigo-200 focus:ring-opacity-50">
                    Calculate Discounted Price
                </button>
                <button type="submit"
                        class="bg-green-500 text-white font-medium py-2 px-4 rounded-md hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-200 focus:ring-opacity-50">
                    Add Product
                </button>
            </form>
        </div>
    </div>
    <script>
        function calculateDiscountedPrice() {
            var productPrice = document.getElementById('productPrice').value;
            var productDiscount = document.getElementById('productDiscount').value;
            var discountedPrice = productPrice - (productPrice * productDiscount / 100);
            document.getElementById('discountedPrice').value = discountedPrice.toFixed(2);
        }
    </script>
</body>
</html>
