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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css" />
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
            <div style="position: relative; top: -80px;">
                <div class="lefttext" style="cursor: default;">
                     <a href="login" style="text-decoration: none;"><h3 class="getin">  </h3></a>
                    <h1 class="maintxt">YOUR JOURNEY BEGINS HERE
                        SIGN UP TO UNLOCK
                        REALM OF REFINEMENT
                        AND PRIVILAGE.</h1>
                    <h2 class="pragg">Access exclusive collections, personalize your experience, and stay in touch<br>
                        with the latest innovations in timekeeping.Whether you're drawn <br>
                        to timeless elegance or modern sophistication,<br>
                        your journey starts here. </h2>
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
                        <h1 class="sthead" style="cursor: default;">JOIN THE EXPERIENCE</h1>
                        <h3 class="ndhead" style="cursor: default;">Step into your private space with confidence and elegance. <br>
                            </h3>
                                                      
                             <!-- Display validation messages  -->
                        <div>
                            <% String status = (String) request.getAttribute("status"); %>
                            <% if (status != null) { %>
                                <div class="ndhead">
                                    <%= status %>
                                </div>
                            <% } %>
                        </div>
                        
                            <div class="placeholderss" >
                                <form action="register" method="post" >
                                    <input type="text" name="FullName" placeholder="Full Name"  class="plcholder" autocomplete="off"><br>
                                    
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="text" name="Username" placeholder="Username"  class="plcholder" autocomplete="off"><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="date" name="Dateobirth" placeholder="Date of Birth"  class="plcholder" autocomplete="off"><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="text" name="Gender" placeholder="Gender"  class="plcholder" autocomplete="off"><br>
                                    
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="Email" name="Email" placeholder="Email"  class="plcholder" autocomplete="off"><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="password" name="Password" placeholder="Password"  class="plcholder" autocomplete="off"><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    
                                    
                                    <input type="number" name="Phonenumber" placeholder="Phone Number"  class="plcholder" autocomplete="off"><br>
                                    <img src="${pageContext.request.contextPath}/assets/img/Longvect.png" alt=""><br>
                                    <button type="submit" class="btn">Register</button>
                                    
                                    
                                </form>
                                <p class="doregister" >	Already have an account? <a href="login" class="registerhere">Login here</a></p>
                            </div>
                        </div>
                        

                </div>
        </div>
            
        </div>
        

    </main>
    
</body>
</html>