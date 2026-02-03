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

    <!-- Header -->
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>Product List</h3>
        <a href="${pageContext.request.contextPath}/" class="btn btn-secondary">← Go Back</a>
    </div>

    <!-- Responsive Table -->
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover align-middle">
            <thead class="table-dark text-center">
                <tr>
                    <th scope="col">Product Id</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Description</th>
                    <th scope="col">Price (₹)</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>

            <tbody class="text-center">
               <c:forEach items="${product }" var="p">
               
                <tr>
                    <th scope="row">DESHPRO-${p.id}</th>
                    <td>${p.name}</td>
                    <td>${p.description}</td>
                    <td>&#8377 ${p.price}</td>
                    <td>
                        <a href="deleteData/${p.id}"><i class="fas fa-trash"></i></a>
                        <a href="updateData/${p.id}"><i class="fas fa-pen-nib"></i></a>
                    </td>
                </tr>

                </c:forEach>
                
            </tbody>
        </table>
    </div>

    <!-- Create New Product Button -->
    <div class="text-end mt-3">
        <a href="ProductAdd" class="btn btn-success">
            + Create New Product
        </a>
    </div>

</div>

</body>
</html>