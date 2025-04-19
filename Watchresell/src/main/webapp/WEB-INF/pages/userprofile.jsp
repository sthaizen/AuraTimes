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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userprofile.css" />
    </head>
<body>
    <main>
        <div>
            <img src="${pageContext.request.contextPath}/assets/img/Userprofilebg.png" class="bgimg">
        </div>
        <div class="container1">
            <div class="Glasscontainer">
                <div class="toptext">
                    <h1 class="accset">Account Settings</h1>
                    <div class="secondarytxt">
                        <div>
                    <h2 class="genral">General Info</h2>
                    <h3 class="parg">Setup your accounts and change password</h3>
                </div>
                    <a href="home" class="backbtn">< Back</a>
                </div>
                </div>

                <div class="placefield">
                    <div class="lefttext" style="padding-left: 93px;">
                        <form action="" method="">
                                <div >
                                    <h3 class="placetxt1">Full Name</h3>
                                    <input type="text" name="Name" placeholder="Full Name" required class="plcholder" ><br>
                                </div>
                                <div>
                                    <h3 class="placetxt1">Date of Birth</h3>
                                    <input type="datetime" name="Dateobirth" placeholder="Date of Birth" required class="plcholder" >
                                </div>
                                <div>
                                    <h3 class="placetxt1">Gender</h3>
                                    <input type="password" name="Gender" placeholder="Password" required class="plcholder" ><br>
                                </div>
                                <div>
                                    <h3 class="placetxt1">Phone Number</h3>
                                    <input type="number" name="Phonenumber" placeholder="Phone Number" required class="plcholder" ><br>
                                </div> 
                    </div>
                        <div class="righttxt" >
                            
                                    <div >
                                        <h3 class="placetxt2">User Name</h3>
                                        <input type="text" name="Username" placeholder="User Name" required class="plcholder" ><br>
                                    </div>
                                    <div>
                                        <h3 class="placetxt2">Email</h3>
                                        <input type="datetime" name="Email" placeholder="Date of Birth" required class="plcholder" >
                                    </div>
                                    <div>
                                        <h3 class="placetxt2">Password</h3>
                                        <input type="password" name="Password" placeholder="Password" required class="plcholder" ><br>
                                    </div>
                        

                                    <div class="buttons">
                                        <button type="submit" class="btn1">Save Changes</button>
                                        <button type="submit" class="btn2">Delete Account</button>
                                    </div>
                            </form>
                    </div>
                </div>

            </div>
        </div>
    </main>
    
</body>
</html>