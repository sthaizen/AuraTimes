<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  background-color: #28a745;
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
                    <a href="#">
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
                <div class="numbers">15,000</div>
                <div class="cardName">Daily Views</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/views.png"alt="" style="width: 55px; margin-left: 10px;">
            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">999</div>
                <div class="cardName" style="width: 90px;">Sales</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/cart.png" alt="" style="width: 55px; margin-left: 10px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">30,000</div>
                <div class="cardName">Reviews</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/reviews.png" alt="" style="width: 55px; margin-left: 50px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">$9,000</div>
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
    
<div class="form-container">
  <h2>Add Product</h2>
  <form action="${pageContext.request.contextPath}/AdminDashBoard" method="post" enctype="multipart/form-data">
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