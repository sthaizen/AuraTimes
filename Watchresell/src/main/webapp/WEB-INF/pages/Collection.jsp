<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Aura</title>
        <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
        <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Collection.css" />
        <script>
        document.addEventListener("DOMContentLoaded", function() {
            const menuBar = document.querySelector(".menuebar");
            const cross = document.querySelector(".cross");
            const insideMenu = document.querySelector(".Insidemenu");
            menuBar.addEventListener("click", function(e) {
                e.preventDefault();
                insideMenu.style.display = "block";
                setTimeout(() => {
                    insideMenu.classList.add("show");
                }, 10);
            });
            cross.addEventListener("click", function() {
                insideMenu.classList.remove("show");
                setTimeout(() => {
                    insideMenu.style.display = "none";
                }, 400);
            });
        });
    </script>
    </head>
    
    <body>
        <header>
         <!-- Navigation -->
         <nav class="main-nav" style="top: 15px;">
            <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;"> 
            <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;"><a class="Menu">Menu</a></div>
            </div>
           
            <div class="logo" style="position: relative; left: 210px;"><a href="home.html"><img src="${pageContext.request.contextPath}/assets/PNG/black logo.png" alt="Logo" /></div></a>
            <div class="inner-main-nav">
                <ul>
                    <li id="coll"><a href="#">Collections</a></li>
                    <li id="coll"><a href="contact">Contact</a></li>
                    <li id="coll"><a href="addtocart">Add to cart</a></li>
                </ul>
            </div>
            
        </nav>
        <!-- Hidden Inside Menu -->
        <div class="Insidemenu">
            <img src="${pageContext.request.contextPath}/assets/PNG/Cross.png" class="cross" alt="Close Menu" style="position: relative; left: 30px; top: 20px; z-index: 200; cursor: pointer;" />
            
            <div class="insidetext" style="position: relative; top: -50px; ">
                <ul>
                    <li><a href="#">THE BRAND</a></li>
                    <li><a href="userprofile">USER PROFILE</a></li>
                    <li><a href="aboutus">ABOUT US</a></li>
                    <li><a href="AdminDashBoard">FRIENDS & PARTHER</a></li>
                    <li><a href="storelocation">STORE LOCATIONS</a></li>
                    <li><a href="login">ACCOUNT</a></li>
                </ul>
            </div>
            <div class="Vector1"><img src="${pageContext.request.contextPath}/assets/PNG/Vector 1.png" alt="Line" /></div>
            <div class="Bookholder">
                <a href="#" class="Book">Book an appointment</a>
                <a href="#" class="Book">Servicing</a>
            </div>
            <div class="Bookholder">
                <a href="#" class="Book1">Pre-owned</a>
                <a href="#" class="Book1">Historical Models</a>
            </div>
            <div class="Vector2" style="position: relative; top: -280px;"><img src="${pageContext.request.contextPath}//assets/PNG/Vector 1.png" alt="Line" /></div>
            <div class="Bookholder2">
                <a href="#" class="pptt1">Accessibility</a>
                <a href="#" class="pptt1">Contacts</a>
                <a href="#" class="pptt1">Most viewed page</a>
                <a href="logout" class="pptt2" style="color: #FF2B5D; font-weight: 800;">Log-out</a>
                <a href="#" class="pptt2">User - <%= session.getAttribute("Username")%></a>
                <a href="#" class="pptt2">Credits</a>
                <div class="social-icons">
                    <a href="#"><img src="${pageContext.request.contextPath}/assets/PNG/Facebook icon.png" alt="Facebook" /></a>
                    <a href="#"><img src="${pageContext.request.contextPath}/assets/PNG/twitter icon.png" alt="Twitter" /></a>
                    <a href="#"><img src="${pageContext.request.contextPath}/assets/PNG/Youtube icon.png" alt="YouTube" /></a>
                    <a href="#"><img src="${pageContext.request.contextPath}/assets/PNG/githubicon.png" alt="GitHub" /></a>
                </div>
            </div>
        </div>
    </header>

        <div class="watchfinder">
            <h1 class="watchfindertxt">Watch Finder</h1>
        </div>
        <h3 class="swarchby">
        Search By Refrences
    </h3>
        <form class="searchtab" action="${pageContext.request.contextPath}/searchProduct" method="get">
    <input type="text" name="search" class="searchinput" placeholder="Search..." style="padding-left: 17px;">
    <button type="submit" class="buttonsearch">
        <p class="asasd">Search</p>
    </button>
</form>
        </div>
        
    <!-- Filter Section -->
<div class="rect1">
  <ul class="typetext">
        <li><p class="txtoo">Filter</p></li>
        <li><a class="txtoo" href="filterProduct?brand=Patek Philippe">Patek Philippe</a></li>
        <li><a class="txtoo" href="filterProduct?brand=Audemars Piguet">Audemars Piguet</a></li>
        <li><a class="txtoo" href="filterProduct?brand=Vacheron Constantin">Vacheron Constantin</a></li>
        <li><a class="txtoo" href="filterProduct?brand=Jaeger‑LeCoultre">Jaeger‑LeCoultre</a></li>
        <li><a class="txtoo" href="filterProduct?brand=Cartier">Cartier</a></li>
        <li><a class="txtoo" href="filterProduct?brand=Rolex">Rolex</a></li>
    </ul>
</div>

<!-- Display filtered brand -->
<c:if test="${not empty param.brand}">
  <p style="margin-left: 95px;  font-weight: 600; font-family: Manrope; color: #000040; margin-top: 20px;">Filtered by: ${param.brand}</p>
</c:if>

<div class="containe1">
    <div class="insideshit">
        <!-- Display products -->
        <c:forEach var="product" items="${collectionList}">
            <div class="watch1">
                <div>
                    <div class="imagecontainer">
                        <a href="${pageContext.request.contextPath}/productdetail?productName=${product.product_Name}">
                            <img src="${pageContext.request.contextPath}/uploads/${product.product_Img}" class="imagess" alt="Product Image">
                        </a>
                    </div>
                    <div class="imagetext">
                        <a href="${pageContext.request.contextPath}/productdetail?productName=${product.product_Name}" style="text-decoration: none;">
                            <h2 class="modelname">${product.product_Name}</h2>
                            <h3 class="brandname">${product.watch_brand}</h3>
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
        
        <c:if test="${empty collectionList}">
            <p style="text-align:center; font-size: 18px;">No products found.</p>
        </c:if>
        
    </div>
    
    </div>

        <div style="display: flex; padding-top: 117px;">
            <!-- Additional content for Moon-Watch -->
            <div class="thirdcard" style="position: relative; z-index: 310;">
                <div class="textoomoon1">
                    <h1 class="symbol">THE MOON-WATCH</h1>
                    <h3 class="parag1">Discover this rare Moonwatch choice, inspired by the colours of astronaut spacesuits. Along with contrasting black details and a Speedmaster name in red, the entire surface features a glossy lacquered finish – the first time ever on the Moonwatch’s step dial.</h3>
                </div>
                <div class="addposter">
                    <div class="handgmt">
                        <img src="${pageContext.request.contextPath}/assets/img/moonss.png">
                        <div>
                            <video autoplay loop muted  src="${pageContext.request.contextPath}/assets/Video/fourthvid.mp4" type="video/mp4" class="secondvid"></video>
                        </div>
                        <div class="buyrolee">
                            <a href="#"><img src="${pageContext.request.contextPath}/assets/PNG/smolonega.png" alt="Omega Logo" class="smolroleee"></a>
                            <div class="textooo" style="cursor: pointer;">
                                <h1 class="mastertxtoo">OMEGA SPEEDMASTER</h1>
                                <h3 class="transparntoo">40 mm, White Gold</h3>
                                <h2 class="classooo">USD $14,000</h2>
                                <h3 class="shopnow">Shop Now</h3>
                                <a href="" class="cartimg"> <img src="${pageContext.request.contextPath}/assets/PNG/Cartsml.png" alt=""></a>
                    <img src="${pageContext.request.contextPath}/assets/PNG/vector3.png" class="vector3">
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
</div>
</body>
</html>
