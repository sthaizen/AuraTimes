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
                    
                    <a href="#">
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
                <div class="cardName" style="width: 90px;">Sells</div>
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
                <div class="cardName">Profit</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/profit.png" alt="" style="width: 55px; margin-left: 50px;">            </div>

        </div>

    
</div>
 <!-- ================= Card Layout================ -->


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
    <div class="statsimg" style=" left: 320px; position: relative; top: 100px;">
        <img src="${pageContext.request.contextPath}/assets/img/bahnukolagi.png" alt="stats">
    </div>

</body>

</html>