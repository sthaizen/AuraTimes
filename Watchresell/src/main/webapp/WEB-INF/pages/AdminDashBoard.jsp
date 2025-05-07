<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aura Times Admin Dashboard</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminDashBoard.css" />
    <style>
          
           
    .form-container {
      background-color: white;
      padding: 100px;
      border-radius: 8px;
      max-width: 1300px;
      margin-top: 150px;
      max-height:900px;      
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      margin-left: 330px;
      margin-bottom: 30px;
      
      
      
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
  background-color: #4D55CC;
  color: white;
  padding: 10px;
  font-size: 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s ease; /* Smooth color change only */
}

.submit-btn:hover {
  background-color: #218838; /* Slightly darker green */
}

.submit-btn:active {
  background-color: #1e7e34; /* Even darker when clicked */
}
/* Custom file input styling */
.form-group input[type="file"] {
  width: 100%;
  padding: 10px;
  font-size: 14px;
  border: 1px solid #ddd;
  border-radius: 4px;
  background-color: #f9f9f9;
  color: #555;
  cursor: pointer;
  transition: all 0.3s ease;
}

/* Hover effect */
.form-group input[type="file"]:hover {
  background-color: #ffff;
  border-color: #bbb;
}


/* Focus effect */
.form-group input[type="file"]:focus {
  outline: none;
  border-color: #28a745;
  box-shadow: 0 0 0 2px rgba(40, 167, 69, 0.25);
}

.alert {
    padding: 10px;
    background-color: #d4edda;
    color: #155724;
    border-radius: 5px;
    margin-bottom: 15px;
    border: 1px solid #c3e6cb;
}



/* Style the file input button text  */
.form-group input[type="file"]::file-selector-button {
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
.form-group input[type="file"]::file-selector-button:hover {
  background-color: #8990ea;
}

/*user css*/
.user-container {
 background-color: white;
       padding: 30px;
      border-radius: 10px;
       max-width: 1300px;
      margin: auto;
       box-shadow: 0 0 10px rgba(0,0,0,0.1);
        margin-left: 330px;
      margin-bottom: 30px;
      margin-top: 50px;
    }

    .user-container h2 {
      color: #c084fc;
    }

    .btn {
      padding: 0.5rem 1rem;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn-dashboard {
      background-color: #22c55e;
      color: #fff;
      margin-bottom: 1rem;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 1rem;
    }

    th, td {
      text-align: left;
      padding: 0.75rem;
      border-bottom: 1px solid #334155;
    }

    .role-user {
      background-color: #3b82f6;
      padding: 0.3rem 0.6rem;
      border-radius: 5px;
      color: #fff;
      font-size: 0.85rem;
    }

    .role-admin {
      background-color: #ef4444;
      padding: 0.3rem 0.6rem;
      border-radius: 5px;
      color: #fff;
      font-size: 0.85rem;
    }

    .profile-yes {
      background-color: #22c55e;
      padding: 0.3rem 0.6rem;
      border-radius: 5px;
      font-size: 0.85rem;
      color: #fff;
    }

    .btn-delete {
      background-color:#ef4444;
      margin-right: 0.5rem;
      color: #fff;
      
    }

    .btn-edit {
      background-color: #3b82f6;
      color: #fff;
    }

    .actions {
      display: flex;
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
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/user.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Profile</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/home.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/sales.png" alt="logo" style="width: 35px;"></div>
                        </span>
                        <span class="title">Stats</span>
                    </a>
                </li>

                <li>
                    <a href="#add-product-form">
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

      <!-- ======================= Login ma vako user ================== -->

                <div class="user">
                    <img src="${pageContext.request.contextPath}/assets/img/profile.png" alt="user">
                </div>
            </div>

            

            
<br>
<br>
                <!-- ================= Customer Review ================ -->
                <div class="recentCustomers">
                    <div class="cardHeader" style="margin-left: 25px;padding-top: 20px; padding-bottom: 10px;">
                        <h2>Reviews</h2>
                    </div>
                    <table>

                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 1.png" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px; text-align: justify;">Absolutely love the Omega!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 2.jpeg" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px; text-align: justify;">The Rolex GMT-Master <br> is stylish and solid!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 3.jpg" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px;">The Omega exceeded my expectations!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 4.jpg" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px; text-align: justify;">Rolex Submariner <br> feels like a statement!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                    
                        
                       
                      
                      
                
                    </table>
                </div>




 <!-- ================= Best selling products================ -->
 <div class="bestselling">
    <div class="cardHeader">
        <h2>Best Selling</h2>
    </div>
    <table>

        <tr>
            <td>
                <div class="imgBx-2"><img src="${pageContext.request.contextPath}/assets/img/Omega.png" alt="watch" style="width: 80px; border-radius: 100px;"></div>
            </td>
            <td>
                <h4>1st👑</h4>
                <div style="font-size: 14px; width:225px; height: 90px; text-align: justify;"><b>Omega:</b><br> Leading the pack is our Omega, 
                    <br>a brand that embodies both <br>groundbreaking innovation. <br>
                    
                </div>
            </td>
            
         
            
        </tr>

        <tr>
            <td width="60px">
                <div class="imgBx-2"><img src="${pageContext.request.contextPath}/assets/img/GMT.png" alt="watch" style="width: 80px; border-radius: 100px;" ></div>
            </td>
            <td>
                <h4>2nd🥈  </h4>
                <div style="font-size: 14px; width: 208; height: 90px; text-align: justify;"><b>Rolex GMT-Master:</b><br> Renowned for its bold design, <br>GMT  combines precision with a <br> luxury craftsmanship.
                    
                </div>
            </td>
        </tr>

        <tr>
            <td width="60px">
                <div class="imgBx-2"><img src="${pageContext.request.contextPath}/assets/img/Rolexsub.png" alt="watch" style="width: 80px; border-radius: 100px;" ></div>
            </td>
            <td>
                <h4>3rd🥉</h4>
                <div style="font-size: 14px; width:300px; height: 90px;"><b>Rolex Submariner:</b><br> A symbol of timeless style,<br>It has been favorite among <br>  diving watch enthusiasts.
                </div>
            </td>
        </tr>

      
      

    </table>
</div>

            </div>
        </div>
 <!-- ================= Best selling products================ -->

 <!-- ================= Card Layout================ -->

    <div class="cardBox">
        <div class="card">
            <div>
                <div class="numbers">10</div>
                <div class="cardName">Daily Views</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/views.png"alt="" style="width: 55px; margin-left: 10px;">
            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">20</div>
                <div class="cardName" style="width: 90px;">Sales</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/cart.png" alt="" style="width: 55px; margin-left: 10px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">0</div>
                <div class="cardName">Reviews</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/reviews.png" alt="" style="width: 55px; margin-left: 50px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">Rs 0</div>
                <div class="cardName">Revenue</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/profit.png" alt="" style="width: 55px; margin-left: 50px;">            </div>

        </div>

    
</div>
 <!-- ================= Card Layout================ -->

 <!-- ================= Add Product section============ -->



    <!-- =========== Scripts =========  -->
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
    <!---stats photo-->
    <div class="statsimg" style=" left: 320px; position: relative; top: 80px;">
        <img src="${pageContext.request.contextPath}/assets/img/newstats.png" alt="stats">
    </div>
        <!---for product section-->
    
<div class="form-container" id="add-product-form">
  <h2>Add Products</h2>
    
  <form action="${pageContext.request.contextPath}/AdminDashBoard" method="post" enctype="multipart/form-data">
    <!-- <div class="form-group">
      <label for="product_id">Product ID</label>
      <input type="text" id="product_id" name="product_id" placeholder="Enter Product ID">
    </div> -->
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
    
    
            <!---for product view and delete-->


<div class="user-container">
  <h2>Manage Products</h2>
  <p>Manage all products in the system</p>
  <br>
  <!-- <button class="btn btn-dashboard">
    <a href="#" style="text-decoration: none; color: white;">🏠 Dashboard</a>
  </button>
 -->
 <%
    String deleteStatus = (String) session.getAttribute("deleteStatus");
    if (deleteStatus != null) {
%>
    <div class="alert alert-success">
        <%= deleteStatus %>
    </div>
<%
        session.removeAttribute("deleteStatus");  // Clear after showing once
    }
%>
 
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
                    <form action="DeleteProductUtil" method="POST">
                        <button type="submit" name="delete" value="${product.product_Name}" class="btn btn-delete">Delete</button>
                        <button type="submit" name="edit" value="${product.product_Name}" class="btn btn-edit">Edit</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</form>
</div>

            <!---end of for product view and delete-->


            <!---for user view and delete-->
    
  <div class="user-container">
    <h2>Manage Users</h2>
    <p>Manage all users in the system</p>
    <br>

    <form action="" method="">
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Joined</th>
            <th>Profile</th>
            <th>Plans</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Sujal Parajuli</td>
            <td>sujal@gmail.com</td>
            <td><span class="role-admin">admin</span></td>
            <td>Apr 19, 2025, 06:44 PM</td>
            <td><span class="profile-yes">Yes</span></td>
            <td>1</td>
            <td class="actions">
              <button type="submit" name="delete" value="Sujal" class="btn btn-delete">Delete</button>
            </td>
          </tr>
          <tr>
            <td>Yathartha</td>
            <td>yathartha2024@gmail.com</td>
            <td><span class="role-user">user</span></td>
            <td>Apr 18, 2025, 03:19 PM</td>
            <td><span class="profile-yes">Yes</span></td>
            <td>0</td>
            <td class="actions">
              <button type="submit" name="delete" value="yathartha" class="btn btn-delete">Delete</button>
            </td>
          </tr>
      
        </tbody>
      </table>
    </form>
  </div>
   
</body>

</html>