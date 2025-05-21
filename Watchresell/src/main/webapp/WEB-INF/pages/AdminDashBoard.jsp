<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Admin Dashboard</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminDashBoard.css" />
 
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
                    <a href="AdminDashBoard">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/sales.png" alt="logo" style="width: 35px;"></div>
                        </span>
                        <span class="title">Stats</span>
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
                
                 <li>
                    <a href="adminProfile">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/user.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">User Profile</span>
                    </a>
                </li>
                 <li>
                    <a href="Collection">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/home.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Preview</span>
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

            





 <!-- ================= Card Layout================ -->

    <div class="cardBox">
        <div class="card">
            <div>
                <div class="numbers">${customerCount}</div>
                <div class="cardName">Customers</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/Customerss.png"alt="" style="width: 55px; margin-left: 10px;">
            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">${productCount}</div>
                <div class="cardName" style="width: 90px;">Products</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/productSearch.png" alt="" style="width: 55px; margin-left: 10px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">${adminCount}</div>
                <div class="cardName">Admins</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/admin.png" alt="" style="width: 55px; margin-left: 50px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers" style="font-size:32px;">$${totalAmount}</div>
                <div class="cardName">Total Amount</div>
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
    <div class="statsimg" style=" left: 76px;; position: relative; top: 55px;">
        <img src="${pageContext.request.contextPath}/assets/img/newstats.png" alt="stats">
    </div>
 
   
</body>

</html>
