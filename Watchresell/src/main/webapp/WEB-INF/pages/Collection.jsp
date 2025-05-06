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
    </head>
    <body>
        <header>
         <!-- Navigation -->
         <nav class="main-nav" style="top: 15px;">
            <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;"> 
            <a href="userprofile" class="Menu"><%= session.getAttribute("Username")%></a> 
            </div>
           
            <div class="logo" style="position: relative; left: 210px;"><a href="home.html"><img src="${pageContext.request.contextPath}/assets/PNG/black logo.png" alt="Logo" /></div></a>
            <div class="inner-main-nav">
                <ul>
                    <li id="coll"><a href="#">Collections</a></li>
                    <li id="coll"><a href="contact.html">Contact</a></li>
                    <li id="coll"><a href="addtocart">Add to cart</a></li>
                </ul>
            </div>
            
        </nav>
    </header>

        <div class="watchfinder">
            <h1 class="watchfindertxt">Watch Finder</h1>
        </div>

        <div class="searchproductbox">
            <h3 class="swarchby">Search By Refrences</h3>
            <div class="searchtab">
                <input type="text" class="searchinput" placeholder="Search.." style="padding-left: 17px;">
                <button class="buttonsearch">
                    <p class="asasd" >Search</p>
                </button>
            </div>
        </div>

        <div class="rect1">
            <ul class="typetext">
                <li><p class="txtoo">Filter</p></li>
                <li><p class="txtoo">Patek Philippe</p></li>
                <li><p class="txtoo">Audemars Piguet</p></li>
                <li><p class="txtoo">Vacheron Constantin</p></li>
                <li><p class="txtoo">Jaeger‑LeCoultre</p></li>
                <li><p class="txtoo">Cartier</p></li>
                <li><p class="txtoo">Rolex</p></li>
            </ul>
        </div>

        <div class="containe1">
            <div class="insideshit">
               

                <!-- Display products -->
                <c:forEach var="product" items="${collectionList}">
                    <div class="watch1">
                        <div>
                            <div class="imagecontainer">
                                
                                <img src="${pageContext.request.contextPath}/uploads/${product.product_Img}" class="imagess" alt="Product Image">
                            </div>
                            <div class="imagetext">
                                <a href="#" style="text-decoration: none;">
                                    <h2 class="modelname" >${product.product_Name}</h2>
                                    <h3 class="brandname">${product.watch_brand}</h3>
                            
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                
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
