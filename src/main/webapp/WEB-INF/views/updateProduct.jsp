<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp" %>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">

            <h3 class="text-center mb-4">Update Product </h3>

            <form action="${pageContext.request.contextPath}/handleForm" method="post">

                <!-- <!-- Product ID -->
                <div class="mb-3">
                    <label for="productId" class="form-label">Product ID</label>
                    <input type="text"
                           class="form-control"
                           id="productId"
                           name="id"
                           placeholder="Enter product ID" 
                           readonly
                           value="${product.id}">
                </div> -->

                <!-- Product Name -->
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text"
                           class="form-control"
                           id="productName"
                           name="name"
                           placeholder="Enter product name"
                           value="${product.name}">
                </div>

                <!-- Product Description -->
                <div class="mb-3">
                    <label for="productDescription" class="form-label">Product Description</label>
                    <textarea class="form-control"
                              id="productDescription"
                              name="description"
                              rows="3"
                              placeholder="Enter product description">${product.description}</textarea>
                </div>

                <!-- Product Price -->
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Product Price</label>
                    <input type="text"
                           class="form-control"
                           id="productPrice"
                           name="price"
                           placeholder="Enter product price"
                           value="${product.price}">
                </div>

                <!-- Submit Button -->
                <div class="container text-center">
                	<a href="ProductList" class="btn btn-secondary ">
                        Back </a>
                    <button type="submit" class="btn btn-primary">
                        Update
                    </button>
                </div>

            </form>

        </div>
    </div>
</div>

</body>
</html>