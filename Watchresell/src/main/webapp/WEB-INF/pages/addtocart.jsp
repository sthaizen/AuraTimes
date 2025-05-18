<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Aura</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addtocart.css" />

</head>
<body>
    <header>
         <!-- Navigation -->
         <nav class="main-nav" style="top: 15px;">
            <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;"> 
            <a href="userprofile" class="Menu"><%= session.getAttribute("Username")%></a> 
            </div>
           
            <div class="logo" style="position: relative; left: 210px;">
            <a href="home.html"><img src="${pageContext.request.contextPath}/assets/img/logosada.png" alt="Logo" /></div></a>
            <div class="inner-main-nav">
                <ul>
                    <li id="coll"><a href="Collection">Collections</a></li>
                    <li id="coll"><a href="contact">Contact</a></li>
                    <li id="coll"><a href="#">Add to cart</a></li>
                </ul>
            </div>
            
        </nav>
    </header>
        <div>
            <img src="${pageContext.request.contextPath}/assets/PNG/Vector 8.png" style="scale: 100%; padding-top: 126px;">
            
        </div>
        <div class="containers11">
        <div class="containers1">
            <div class="backbutton">
                <a href="Collection" style="text-decoration: none;"><p class="backabutton"> < Back</p></a>
                <h1 class="yourcart">YOUR CART</h1>
            </div>
            <div class="productinfo">
                <h2 class="info">Product</h2>
                <h2 class="info" style="padding-left: 300px;  opacity: 0%;">Quantity</h2>
                <h2 class="info">Brand</h2>
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/assets/PNG/Vector 13.png" style="padding-left: 80px;">
            </div>
            <div class="bottotext" style="position: absolute; top: 668px; left: 80px;">
                <h1 class="freship">Free Shipping</h1>
                <h3 class="parag">We believe luxury should be seamless from  start to finish, and that includes getting your timepiece delivered <br>
                    to your door at no extra cost.</h3>
                    <h1 class="help111">Need Help?</h1>
            </div>
            
            <c:if test="${empty cartItems}">
		        <p class="shippingtime" style="padding-left: 405px; padding-top: 54px;">Your cart is empty.</p>
		    </c:if>
             <c:forEach var="item" items="${cartItems}">
				    <div class="itemtobeadded">
				    <div>
			                <img src="${pageContext.request.contextPath}/uploads/${item.productImage}"  class="balha"></div>
			                <div style="padding-left: 25px; padding-top: 24px;">
			                
			            </div>
				        <div class="iteminfo">
				        
				            <div class="Watchname">
				                <p class="watchnametobegen">${item.productName}</p>
				                <p class="Watchbrand">${item.watchBrand}</p>
				            </div>
				            <div class="watchPrice">
				                
				                <p class="quantitywa">$ ${item.productPrice}</p>
				            </div>
				        </div>
				    </div>
				     <div>
            <img src="${pageContext.request.contextPath}/assets/PNG/Vector 13.png" style="padding-left: 80px; scale: 90%;">
        </div>
			</c:forEach>

       
        
        
        
        <div>
            <img src="${pageContext.request.contextPath}/assets/PNG/Vector 9.png" style=" padding-left: 955px;  position: relative; top: -70px;" class="sepration">
        </div>      
        </div>
        <div style="padding-top: 150px; padding-left: 200px;">
        <div class="containers2">
            <div class="transectiondetais">
                <div>
                    <%-- Calculate total price from cartItems --%>
					<c:set var="totalPrice" value="0" />
					<c:forEach var="item" items="${cartItems}">
					    <c:set var="totalPrice" value="${totalPrice + item.productPrice}" />
					</c:forEach>
					
					<h1 class="summ">SUMMARY</h1>
					<img src="${pageContext.request.contextPath}/assets/PNG/Vector 10.png" style="padding-top: 20px;">
					<div class="Shipp">
					    <h3 class="shippingtime">Shipping (10 to 15 business days)</h3>
					    <h3 class="Shippingamouint">Free</h3>
					</div>
					<div class="Shipp">
					    <h3 class="shippingtime">Tax</h3>
					    <h3 class="Shippingamouint">0%</h3>
					</div>
					<div class="Shipp">
					    <h3 class="shippingtime">Subtotal</h3>
					    <h3 class="Shippingamouint">$${totalPrice}</h3>
					</div>
					<img src="${pageContext.request.contextPath}/assets/PNG/Vector 10.png" style="padding-top: 30px;">
					<div class="Total">
					    <h3 class="Totaltxt">Total</h3>
					    <h3 class="Totaltxt">$${totalPrice}</h3>
					</div>
                    <div class="btna" style="margin-top: 30px;">
                        <button class="btn">Proceed To Checkout</button>
                    </div>
                    <div>
                        <a href="Collection" class="contpurc" style="text-decoration: none; "> <p style="padding-top: 40px; padding-left: 180px;" class="asdasdasd"> Continue Purchase </p> </a>
                    </div>
                    <div>
                        <h1 class="asdwedhje">Have a Coupon? Enter your Code</h1>
                        <input type="number" name="Username" placeholder=" Enter your Code" required class="plcholder" ><br>
                        <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                    </div>

                </div>
            </div>

        </div>
        </div>
        </div>
        <footer>
            <img src="${pageContext.request.contextPath}/assets/img/1st footer.png" style="padding-top: 52px;">
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
            <div class="footertxt">
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

      
</body>
</html>