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
                    <div class="menuebar" style="position: relative; left: 00px; cursor: pointer;"><a class="Menu">Menu</a></div>
                </div>
                <div class="logo" style="position: relative; left: 210px;">
                    <a href="home.html"><img src="${pageContext.request.contextPath}/assets/img/logosada.png" alt="Logo" /></a>
                </div>
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
                    <a href="https://www.facebook.com/jj.fish.142892"><img src="${pageContext.request.contextPath}/assets/PNG/Facebook icon.png" alt="Facebook" /></a>
                    <a href="https://x.com/home"><img src="${pageContext.request.contextPath}/assets/PNG/twitter icon.png" alt="Twitter" /></a>
                    <a href="https://www.youtube.com/"><img src="${pageContext.request.contextPath}/assets/PNG/Youtube icon.png" alt="YouTube" /></a>
                    <a href="https://github.com/sthaizen/AuraTimes.git"><img src="${pageContext.request.contextPath}/assets/PNG/githubicon.png" alt="GitHub" /></a>
                </div>
            </div>
        </div>
        </header>

        <!-- Notification Modal -->
        <!-- <div id="cartModal" class="modal-overlay">
            <div class="modal-box">
                <h2 class="modal-title">Added to Cart</h2>
                <p class="modal-desc">Your item has been successfully added to the cart.</p>
                <div class="modal-actions">
                    <button id="closeCartModal" class="modal-btn secondary-btn">Close</button>
                </div>
            </div>
        </div> -->
  
        <div>
            <img src="${pageContext.request.contextPath}/assets/PNG/Vector 8.png" style="scale: 100%; padding-top: 86px;  opacity: 0;">   
        </div>
        <div>
            <a href="Collection" style="text-decoration: none;">
                <h3 class="backbtn"></h3>
            </a>
            <div>
                <img src="${pageContext.request.contextPath}/assets/PNG/secondlong.png" style="padding-left: 61px; padding-top: 19px;">
            </div>
        </div>
<div class="fullbody">
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
                    <%-- <form action="${pageContext.request.contextPath}/addtocart?productName=${product.product_Name}&watchBrand=${product.watch_brand}&productPrice=${product.product_Price}" method="get">
    <button class="addtocart" type="submit">
        <h2 class="add">Add to cart</h2>
    </button>
</form> --%>
						<form action="${pageContext.request.contextPath}/addtocart" method="post">
						    <input type="hidden" name="productName" value="${product.product_Name}" />
						    <input type="hidden" name="watchBrand" value="${product.watch_brand}" />
						    <input type="hidden" name="productPrice" value="${product.product_Price}" />
						    <input type="hidden" name="productImage" value="${product.product_Img}" />
						    <button type="submit" class="addtocart"><h2 class="add">Add to cart</h2></button>
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
       <div class="biitther">
    <div class="description" data-aos="fade-up">
        <div class="descriptt">
            <div class="testoooxda">
                <div class="d1">
                    <h1 class="dasdawrfd">DESCRIPTION</h1>
                    <img src="${pageContext.request.contextPath}/assets/PNG/redline.png" style="padding-left: 96px; padding-top: 9px;">
                    <h3 class="thingstowrite"> ${product.description}</h3>
                    <h1 class="productdetaa">Product Detail</h1>
                    <ul style="padding-left: 126px;">
                        <li class="detll">Durable stainless steel case</li>
                        <li class="detll">Water-resistant up to 50 meters</li>
                        <li class="detll">Scratch-resistant glass</li>
                        <li class="detll">Suitable for formal and casual wear</li>
                    </ul>
                </div>
                <div class="prdimhhs" >
                    <img src="${pageContext.request.contextPath}/assets/img/miniclocks.png" style="width: 527px;height: 540px;">
                </div>

            </div>
        </div>
    </div>
</div>

</div>
<div class="twoimg" data-aos="fade-up">
    <img src="${pageContext.request.contextPath}/assets/img/smolomega1.png" style="width: 554px; height: 666px;">
    <img src="${pageContext.request.contextPath}/assets/img/bigmoega1.png" style="width: 1086px; height: 578px; padding-top: 50px;">

</div> 
<div class="reoelcxasd">


<div class="thirdcard" style="position: relative; z-index: 310; " data-aos="fade-up">
    <div class="textoomoon1">
        <h1 class="symbol">THE GMT-WATCHES</h1>
        <h3 class="parag1">Discover this distinctive GMT watch edition, inspired by the dynamic spirit of world travelers. Accented with bold dual-time indicators and a striking red GMT hand, the design is both functional and iconic. The dial features a refined first for this collection’s signature face.</h3>
    </div>
    <div>
        <div class="handgmt">
            <img src="${pageContext.request.contextPath}/assets/img/handonpepsiGMT.png">
            <div>
                <video AUTOPLAY loop muted playsinline src="${pageContext.request.contextPath}/assets/Video/secondvid.mp4" type="video/mp4" class="secondvid"></video>
            </div>
            <div class="buyrolee">
                <a href=""><img src="${pageContext.request.contextPath}/assets/PNG/Smolpng.png" alt="" class="smolroleee"></a>
                <div class="textooo" style="cursor: pointer;">
                    <a href="">
                        <h1 class="mastertxtoo">THE ROLEX GMT-MASTER </h1>
                    </a>
                    <a href="">
                        <h1 class="mastertxtoo">BATMAN, 124536LB</h1>
                    </a>
                    <h3 class="transparntoo">40 mm, White Gold</h3>
                    <a href="">
                        <h2 class="classooo">USD $14,000</h2>
                    </a>
                    <a href="">
                        <h3 class="shopnow">Shop Now</h3>
                    </a>
                    <a href="" class="cartimg"> <img src="${pageContext.request.contextPath}/assets/PNG/Cartsml.png" alt=""></a>
                    <img src="${pageContext.request.contextPath}/assets/PNG/vector3.png" class="vector3">
                </div>
            </div>
        </div>
    </div>
</div>
</div>
    
</div>

 <footer>
            <img src="${pageContext.request.contextPath}/assets/img/1st footer.png" style="position: relative; top: -50px;">
            <div class="footerbody">
                <div class="logos">
                    <img src="${pageContext.request.contextPath}/assets/Logo/bigblacklogo.png" >
                    <p class="follow">Follow us on</p>
                
                <div class="icons">
                    <a href="https://www.facebook.com/jj.fish.142892"><img src="${pageContext.request.contextPath}/assets/Logo/facebook.png" alt=""></a>
                    <a href="https://x.com/home"><img src="${pageContext.request.contextPath}/assets/Logo/twitter.png" alt=""></a>
                    <a href="https://www.youtube.com/"><img src="${pageContext.request.contextPath}/assets/Logo/youtube.png" alt=""></a>
                    <a href="https://github.com/sthaizen/AuraTimes"><img src="${pageContext.request.contextPath}/assets/Logo/github.png" alt=""></a>

                </div>
            </div>
            <div class="footertxt" >
            <div class="Customer">
                <h1 class="maintxt">Customer care</h1>
                <h3 class="secondtxt">Purchase policy</h3>
                <h3 class="secondtxt">Return & Refund Policy</h3>
                <h3 class="secondtxt">Deposit & Payment Policy</h3>
                <h3 class="secondtxt">Shipping & Delivery Policy</h3>
                <h3 class="secondtxt">Privacy policy</h3>
                <h3 class="secondtxt">Terms and Service</h3>
            </div>
            <div class="Quicklinks">
                <h1 class="maintxt">Quick links</h1>
                <h3 class="secondtxt">Sell your watches</h3>
                <h3 class="secondtxt">Contact us</h3>
                <h3 class="secondtxt">Warranty Information</h3>
                <h3 class="secondtxt">About us</h3>
                <h3 class="secondtxt">Privacy policy</h3>
                <h3 class="secondtxt">Careers</h3>
            </div>
            <div class="ADDinfo">
                <h1 class="maintxt">Additional Information</h1>
                <h3 class="secondtxt">Care for your watch</h3>
                <h3 class="secondtxt">Repairs & Services</h3>
                <h3 class="secondtxt">Customer Reviews</h3>
                <h3 class="secondtxt">Security & Safety</h3>
            </div>
            <div class="Auratimes">
                <h1 class="maintxt">Aura Times</h1>
                <h3 class="secondtxt">Himalayan Tea House</h3>
                <h3 class="secondtxt">Boudhanath Stupa Marg</h3>
                <h3 class="secondtxt">Kathmandu 44600</h3>
                <h3 class="secondtxt">Nepal</h3>
                <h3 class="secondtxt">+977-9765588956</h3>
                <h3 class="secondtxt">Everest Brew Co.</h3>
                <h3 class="secondtxt">Thamel</h3>
                <h3 class="secondtxt">Kathmandu 44600</h3>
                <h3 class="secondtxt">Nepal</h3>
            </div>
            <div class="Members">
                <h1 class="maintxt">Members</h1>
                <h3 class="secondtxt" >Sujal Parajuli</h3>
                <h3 class="secondtxt">Yathartha Shrestha</h3>
                <h3 class="secondtxt">Sakshyam Kafle</h3>
                <h3 class="secondtxt">Niran Bhatta</h3>
                <h3 class="secondtxt">Wassem Malik</h3>
            </div>

        </div>
            </div>
        </footer>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
       

      

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
