<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.Auratimes.model.ProductModel" %>
<jsp:useBean id="product" type="com.Auratimes.model.ProductModel" scope="request" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Aura</title>
        <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
        <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productdetail.css" />      
    </head>

    <body>
        <header>
            <!-- Navigation -->
            <nav class="main-nav" style="top: 15px;">
                <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;">
                    <a class="Menu">Menu</a>
                </div>
                <div class="logo" style="position: relative; left: 210px;">
                    <a href="home.html"><img src="${pageContext.request.contextPath}/assets/PNG/black logo.png" alt="Logo" /></a>
                </div>
                <div class="inner-main-nav">
                    <ul>
                        <li id="coll"><a href="#">Collections</a></li>
                        <li id="coll"><a href="contact.html">Contact</a></li>
                        <li id="coll"><a href="#">Add to cart</a></li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- Notification Modal -->
        <div id="cartModal" class="modal-overlay">
            <div class="modal-box">
                <h2 class="modal-title">Added to Cart</h2>
                <p class="modal-desc">Your item has been successfully added to the cart.</p>
                <div class="modal-actions">
                    <button id="closeCartModal" class="modal-btn secondary-btn">Close</button>
                </div>
            </div>
        </div>
  
        <div>
            <img src="${pageContext.request.contextPath}/assets/PNG/Vector 8.png" style="scale: 100%; padding-top: 126px;">   
        </div>
        <div>
            <a href="Collection" style="text-decoration: none;">
                <h3 class="backbtn">< Back</h3>
            </a>
            <div>
                <img src="${pageContext.request.contextPath}/assets/PNG/secondlong.png" style="padding-left: 81px; padding-top: 19px;">
            </div>
        </div>

        <div class="parent">
            <div class="productimgcont">
                <div class="productimage">
                    <img src="${pageContext.request.contextPath}/uploads/${product.product_Img}" alt="image" class="productimage1">
                </div>
            </div>
            <div class="line">
                <img src="${pageContext.request.contextPath}/assets/PNG/vertical.png" alt="">
            </div>
            <div class="productprocess">
                <div class="productdetail">
                    <h1 class="productname">${product.product_Name}</h1>
                    <h2 class="productdescription">${product.watch_brand}</h2>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/assets/PNG/blann.png" style="padding-left: 52px; padding-top: 23px;">
                </div>
                <div class="sdasd">
                    <div class="pices">
                        <div class="currentprice">
                            <h3 class="buy">Buy Now</h3>
                            <h1 class="price">$ ${product.product_Price}</h1>
                        </div>  
                        <div class="previousbid">
                            <h3 class="bid">Previous Bid</h3>
                            <h2 class="oldprice">$ ${product.previous_bid}</h2>
                        </div>
                    </div>
                </div>
                <div class="buttonsaa">
                    <form action="">
                        <button class="addtocart" type="button">
                            <h2 class="add">Add to cart</h2>
                        </button>
                    </form>
                </div>
                <div class="blasasda">
                    <div class="yrcon">
                        <div class="p1">
                            <h3 class="asdasd">Year</h3>
                            <h1 class="prisghace1">2022</h1>
                        </div>
                        <div class="p2">
                            <h3 class="asdasd">Condition</h3>
                            <h1 class="prisghace1">Pre-Owned (Good)</h1>
                        </div>
                    </div>  
                    <div class="inloc">
                        <div class="p1">
                            <h3 class="asdasd">Includes</h3>
                            <h1 class="prisghace1">Watch and Bracelets</h1>
                        </div>
                        <div class="p2">
                            <h3 class="asdasd">Location</h3>
                            <h1 class="prisghace1">Nepal, Kathmandu</h1>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/assets/PNG/blann.png" style="padding-left: 52px; padding-top: 23px;">
                </div>
                <div class="details">
                    <div>
                        <h2  class="detailtxt">Details</h2>
                    </div>
                    <div class="boxes">
                        <div class="casdasd">
                            <div class="boxestop">
                                <div class="refrescessess">
                                    <h1 class="toptxttaa">Reference</h1>
                                    <h3 class="bottotexta">124536LB</h3>
                                </div>
                                <div class="dailclr">
                                    <h1 class="toptxttaa">Dial Color</h1>
                                    <h3 class="bottotexta">Black</h3>
                                </div>
                                <div class="casesize">
                                    <h1 class="toptxttaa">Case Size</h1>
                                    <h3 class="bottotexta">42 MM</h3>
                                </div>
                            </div>
                        </div>
                        <div class="boxbutton">
                            <div class="strap">
                                <h1 class="toptxttaa">Strap/Bracelet</h1>
                                <h3 class="bottotexta">White Gold</h3>
                            </div>
                        </div>
                        <div>
                            <h2  class="sellernot">Seller Note</h2>
                            <h3 class="perfectoo">Perfect Condition</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <img src="${pageContext.request.contextPath}/assets/PNG/secondlong.png" style="padding-left: 81px; padding-top: 9px;">
        </div>
        <div class="rec">
            <div class="sdasdasd3qfas"> 
                <h1 class="asdasd1">Recommendation</h1>
                <a href="#" class="asdasdas">View All</a>
            </div>
        </div>

      

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const cartModal = document.getElementById("cartModal");
                const closeCartModal = document.getElementById("closeCartModal");
                const addToCartBtn = document.querySelector(".addtocart");
                
                addToCartBtn.addEventListener("click", function () {
                    cartModal.classList.add("active");
                });

                closeCartModal.addEventListener("click", function () {
                    cartModal.classList.remove("active");
                });
            });
        </script>
    </body>
</html>
