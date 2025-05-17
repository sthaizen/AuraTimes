<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aura</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
</head>
<body>
    <header>

    </header>
    <main>
        <div>
            <img src="${pageContext.request.contextPath}/assets/img/Contactusback.png" class="bgimg">
        </div>
        <div class="container">
            <div class="logo">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/PNG/Logo.png" class="png"></a>
            </div>
            <div style="position: relative; top: -50px;">
                <div class="lefttext" style="cursor: default;">
                    <h3 class="getin">WELCOME BACK</h3>
                    <h1 class="maintxt">WE’R GLAD TO SEE YOU
                        AGAIN lOGIN TO 
                        CONTINEW YOUR
                        JOURNEY</h1>
                    <h2 class="pragg">Access your watch collection, manage your preferences, and stay updated <br>
                        with the latest in style and precision. Whether you're here for timeless <br>
                        classics or cutting-edge innovation, your journey continues here. </h2>
                </div>
                <div class="smolinfo">
                    <div class="contactus">
                        <h1 class="contactus1" style="cursor: pointer;">CONTACT US</h1>
                        <h3 class="downtext">+977-9765588956</h3>
                        <h3 class="downtext">+977-9842430091</h3>
                    </div>
                    <div class="email1">
                        <h1 class="contactus1" style="cursor: pointer;">EMAIL</h1>
                        <h3 class="downtext">Aurahiaurahoga@gmail.com</h3>
                        <h3 class="downtext">Aurapromax@gmail.com</h3>
                    </div>
                </div>
                <div class="Address1">
                    <h1 class="contactus1" style="cursor: pointer;">Address</h1>
                    <h3 class="downtext">Kathmandu. Nepal</h3>
                    <h3 class="downtext" style="opacity: 0%;">.</h3>
            </div>
            <div class="container2">
                <div class="Insidebox" >
                    <div class="Text11" style="z-index: 1;">
                        <h1 class="sthead" style="cursor: default;">GATEWAY TO YOU</h1>
                        <h3 class="ndhead" style="cursor: default;">Step into your private space with confidence and elegance <br>
                            because every moment of access should feel exceptional.</h3>                          
                            
                            
                            <div class="placeholderss" >
                             <% String status = (String) request.getAttribute("status"); %>
							    <% if (status != null) { %>
							        <div class="ndhead">
							            <%= status %>
							        </div>
							    <% } %>
                                <form action="login" method="post">
                                
                                
                                    <input type="text" name="Username" placeholder="Username "  class="plcholder" autocomplete="off" ><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="password" name="Password" placeholder="Password"  class="plcholder"  autocomplete="off"><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <button type="submit" class="btn">LOGIN</button>
                                    <p class="doregister" >Don't have an account? <a href="register" class="registerhere">Register here</a></p>
                                </form>
                            </div>
                        </div>
                        

                </div>
        </div>
            
        </div>
        

    </main>
    
</body>
</html>