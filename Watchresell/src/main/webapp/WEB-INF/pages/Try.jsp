<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Product Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      padding: 20px;
    }

    .form-container {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      max-width: 500px;
      margin: auto;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    .form-group input,
    .form-group textarea {
      width: 100%;
      padding: 8px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .form-group input[type="file"] {
      padding: 3px;
    }

    .form-group textarea {
      resize: vertical;
    }

    .submit-btn {
      display: block;
      width: 100%;
      background-color: #28a745;
      color: white;
      padding: 10px;
      font-size: 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .submit-btn:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Add Product</h2>
  <form action="${pageContext.request.contextPath}/Try" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label for="product_id">Product ID</label>
      <input type="text" id="product_id" name="product_id" placeholder="Enter Product ID">
    </div>
    <div class="form-group">
      <label for="product_name">Product Name</label>
      <input type="text" id="product_name" name="product_name" placeholder="Enter Product Name">
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <textarea id="description" name="description" placeholder="Enter Description"></textarea>
    </div>
    <div class="form-group">
      <label for="product_price">Product Price</label>
      <input type="number" id="product_price" name="product_price" placeholder="Enter Price">
    </div>
    <div class="form-group">
      <label for="product_img">Product Image</label>
      <input type="file" id="product_img" name="product_img" accept="image/*">
    </div>
    <div class="form-group">
      <label for="watch_brand">Watch Brand</label>
      <input type="text" id="watch_brand" name="watch_brand" placeholder="Enter Watch Brand">
    </div>
    <div class="form-group">
      <label for="previous_bid">Previous Bid</label>
      <input type="number" id="previous_bid" name="previous_bid" placeholder="Enter Previous Bid">
    </div>
    <button type="submit" class="submit-btn">Submit</button>
  </form>
</div>

</body>
</html>