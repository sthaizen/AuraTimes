<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.Auratimes.model.ProductModel" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> DashBoard Product</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminDashBoard.css" />
    <style>
          


.user-container {
 		background-color: white;
       padding: 30px;
      border-radius: 10px;
       max-width: 1500px;
      margin: auto;
       box-shadow: 0 0 10px rgba(0,0,0,0.1);
        margin-left: 80px;
      margin-bottom: 30px;
      margin-top: 50px;
    }

    .user-container h2 {
      color: #c084fc;
       margin-bottom:5px;
    }



/* update product/ add product section */
.user-container-2 {
  background-color: white;
  padding: 30px;
  border-radius: 10px;
  max-width: 1500px;
  height:250px;
  margin: auto;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
  margin-left: 80px;
  margin-bottom: 30px;
  margin-top: 50px;
  
}

.user-container-2 h2 {
  color: #c084fc;
  margin-bottom: 20px;
}

/* Form layout container */
.user-container-2 form {
  position: relative;
  height: 330px; /* Fixed height to maintain consistency */
  width: 100%;
}

/* Individual input text area section code */
.ProductName {
  position: absolute;
  top: 0;
  left: 0;
}

.ProductName input {
  width: 250px;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.ProductPrice {
  position: absolute;
  top: 0;
  left: 400px;
}

.ProductPrice input {
  width: 120px;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.WatchBrand {
  position: absolute;
  top: 0;
  left: 680px;
}

.WatchBrand input {
  width: 180px;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.Bid {
  position: absolute;
  top: 0;
  left: 1020px;
}

.Bid input {
  width: 150px;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.Desp {
  position: absolute;
  top: 80px;
  display: flex;
  gap:10px;
}

.Desp textarea {
  width: 320px;
  height: 40px;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;

}

.ProductImage {
  position: absolute;
  top: 80px;
  left: 600px;
}

.ProductImage input[type="file"] {
  width: 250px;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

/* Current image text */
.ProductImage p {
  margin-top: 5px;
  font-size: 14px;
  color: #666;
}

.user-container-2 input[type="file"]::file-selector-button {
  padding: 8px 12px;
  margin-right: 10px;
  background-color: #4D55CC;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  transition: background-color 0.2s ease;
}

/* Hover effect for the button part */
.user-container-2 input[type="file"]::file-selector-button:hover {
  background-color: #8990ea;
}

.submit-btn {
  width: 150px;
  height: 38px;
  background-color: #4D55CC;
  color: white;
  padding: 10px;
  font-size: 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  position: absolute;
   bottom: 205px;
   right:35px;
  transition: background-color 0.2s ease;
}

.submit-btn:hover {
  background-color: #8990ea;
}

.submit-btn:active {
  background-color: #b9ccec;
}

/* Table styling */
table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 16px;
}


th, td {
  text-align: left;
  padding: 12px;
  border-bottom: 1px solid #334155;
}

.btn {
  padding: 8px 16px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.btn-dashboard {
  background-color: #22c55e;
  color: #fff;
  margin-bottom: 16px;
}

.btn-delete {
  background-color: #ef4444;
  margin-right: 8px;
  color: #fff;
}

.btn-edit {
  background-color: #4D55CC;
  text-decoration: none;
  color: #fff;
}

.btn-edit:hover {
  background-color: #8990ea;
}

.btn-edit:active {
  background-color: #b9ccec;
}

.actions {
  display: flex;
}

/* Success message */
.alert-success {
  color: #155724;
  background-color: #d4edda;
  border: 1px solid #c3e6cb;
  padding: 10px;
  border-radius: 5px;
  margin-bottom: 15px;
}

.alert {
  padding: 10px;
  background-color: #d4edda;
  color: #155724;
  border-radius: 5px;
  margin-bottom: 15px;
  border: 1px solid #c3e6cb;
}
    </style>
</head>

<body>

       <!-- =============== Navigation ================ -->
    <div class="container">
          <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon">
                            <img src="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" alt="logo" style="width: 30px;">
                        </span>
                        <span class="title" style="margin-bottom: 20px;">Aura Watch</span>
                    </a>
                </li>
                <li>
                    <a href="adminProfile">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/user.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Profile</span>
                    </a>
                </li>
               

                <li>
                    <a href="AdminDashBoard">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/sales.png" alt="logo" style="width: 35px;"></div>
                        </span>
                        <span class="title">Stats</span>
                    </a>
                </li>
                 <li>
                    <a href="Collection">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/home.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Collection</span>
                    </a>
                </li>

                <li>
                    <a href="dashBoardProduct">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/product.png" alt="logo" style="width: 35px;"></div>
                        </span>
                        <span class="title">Products</span>
                    </a>
                </li>

                


                <li style="margin-top: 30px;">
                    
                    <a href="logout">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/logout.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Log Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">

                    <img src="${pageContext.request.contextPath}/assets/img/menu.png" alt="" width="30px">
                </div>

            </div>

            
 <!-- ================= Add Product section============ -->



    <!-- =========== Scripts for sidebar =========  -->
    <script>
        // add hovered class to selected list item
        let list = document.querySelectorAll(".navigation li");

        function activeLink() {
            list.forEach((item) => {
                item.classList.remove("hovered");
            });
            this.classList.add("hovered");
        }

        list.forEach((item) => item.addEventListener("mouseover", activeLink));

        // Menu Toggle
        let toggle = document.querySelector(".toggle");
        let navigation = document.querySelector(".navigation");
        let main = document.querySelector(".main");

        toggle.onclick = function () {
            navigation.classList.toggle("active");
            main.classList.toggle("active");
        };
    </script>


<!--edit/ add Product section-->
<!--Product editing section-->

<div class="user-container-2">
<%
ProductModel editProduct = (ProductModel) request.getAttribute("editProduct");
boolean isEditing = (editProduct != null);
%>
<h2><%= isEditing ? "Edit Product" : "Add Products" %></h2>
<form action="dashBoardProduct" method="post" enctype="multipart/form-data">
<input type="hidden" name="original_product_name" value="<%= isEditing ? editProduct.getProduct_Name() : "" %>">
<div class="ProductName">
<label>Product Name</label>
<input type="text" name="product_name" placeholder="Enter Product Name" value="<%= isEditing ? editProduct.getProduct_Name() : "" %>" required>
</div>

<div class="ProductPrice">
<label>Product Price</label>
<input type="number" step="0.01" name="product_price" placeholder="Enter Price" value="<%= isEditing ? editProduct.getProduct_Price() : "" %>" required>
</div>

<div class="ProductImage">
<label>Product Image</label>
<input type="file" name="product_img">
<% if (isEditing) { %>
<p>Current Image: <%= editProduct.getProduct_Img() %></p>
<% } %>
</div>

<div class="WatchBrand">
<label>Watch Brand</label>
<input type="text" name="watch_brand" placeholder="Enter Watch Brand" value="<%= isEditing ? editProduct.getWatch_brand() : "" %>" required>
</div>

<div class="Bid">
<label>Previous Bid</label>
<input type="number" step="0.01" name="previous_bid" placeholder="Enter Previous Bid" value="<%= isEditing ? editProduct.getPrevious_bid() : "" %>" required>
</div>

<div class="Desp">
<p> Description </p>
<textarea name="description" placeholder="Enter Description" required><%= isEditing ? editProduct.getDescription() : "" %></textarea>
</div>

<button type="submit" class="submit-btn"><%= isEditing ? "Update" : "Submit" %></button>
</form>
</div>

<!-- Product Management Container -->
<div class="user-container">
    <h2>Manage Products</h2>
    <p>Manage all products in the system</p>
    <br>

    <!-- Success Message -->
    <%
        String status = (String) request.getAttribute("status");
        if (status != null) {
    %>
        <div class="alert alert-success"><%= status %></div>
    <%
        }
    %>

    <!-- Delete Confirmation Message -->
    <%
        String deleteStatus = (String) session.getAttribute("deleteStatus");
        if (deleteStatus != null) {
    %>
        <div class="alert alert-success"><%= deleteStatus %></div>
    <%
            session.removeAttribute("deleteStatus");
        }
    %>

    <!-- Product Table -->
    <form action="DeleteProductUtil" method="POST">
        <table>
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Watch Brand</th>
                    <th>Previous Bid</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${adminProducts}">
                    <tr>
                        <td>${product.product_Name}</td>
                        <td>${product.description}</td>
                        <td>$${product.product_Price}</td>
                        <td>${product.watch_brand}</td>
                        <td>$${product.previous_bid}</td>
                        <td class="actions">
                            <button type="submit" name="delete" value="${product.product_Name}" class="btn btn-delete">Delete</button>
                            <a href="dashBoardProduct?edit=${product.product_Name}" class="btn btn-edit">Edit</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
</div>


 
  
   
</body>

</html>
