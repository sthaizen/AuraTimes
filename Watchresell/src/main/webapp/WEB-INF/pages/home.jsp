<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Aura</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css" />
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
    <div id="main">
        <!-- Navigation -->
        <nav class="main-nav" style="top: 15px;">
            <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;">
                    <div class="menuebar" style="position: relative; left: 00px; cursor: pointer;"><a class="Menu">Menu</a></div>
                </div>
            <div class="logo" style="position: relative; left: 210px;"><img src="${pageContext.request.contextPath}/assets/PNG/Logo.png" alt="Logo" /></div>
            <div class="inner-main-nav">
                <ul>
                    <li id="coll"><a href="Collection">Collections</a></li>
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
                    <li><a href="privacy">PRIVACY POLICY</a></li>
                    <li><a href="terms">TERMS & CONDITION</a></li>
                    <li><a href="#">ACCOUNT</a></li>
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
        
        <!-- Video background -->
        <video AUTOPLAY loop muted  preload="auto" class="Video">
            <source src="${pageContext.request.contextPath}/assets/Video/Nextvid.mp4" type="video/mp4" />
        </video>
        <!-- Overlay Text -->
        <div style="position: relative; top: -30px; left: 12px;">
            <p class="Newcoll">NEW COLLECTION OF 2025</p>
            <p class="Thesub">THE SUBMARINER SERIES</p>
            <a href="Collection" class="Launchtheexp">
                <p class="Launchthe">+ Launch the experience</p>
                
            </a>
            <div class="scrollarrow" >
            <P class="scroll" style="position: relative; top: 270px; left: 80px;" >SCROLL TO DISCOVER</P>
                <a href="#onscrollloc" class="animatearrow"><img src="${pageContext.request.contextPath}/assets/PNG/arrow.png" style="position: relative; top: 290px; left: 130px; scale: 70%;"></a>
                
              </div>
        </div>
        
        
        
        <div class="part2">
            <div class="container2" id="onscrollloc"></div>
            <div class="flowing-text" style="position: relative; top: 191px;left: 91px; z-index: 200;" data-aos="fade-up" data-aos-duration="500" >
                <h1 class="head1" id="">Ever-Flowing Imagination</h1>
                <h3 class="head2">Aura reveals its latest creations — masterpieces born from an ever-evolving imagination that breathes life into every facet of the Maison’s savoir-faire.</h3>
            </div>
            <div class="watches" style="position: relative; z-index: 200;">
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/Omega.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">MOONWATCH</p>
                        <a href="productdetail?productName=Omega%20Speedmaster" style="text-decoration: none;">
                            <h2 class="maintxt11">Omega Speed Master</h2>
                        </a>
                    </div>
                </div>
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/Rolexsub.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">DAY-JUST</p>
                        <a href="productdetail?productName= Rolex%20Submariner" style="text-decoration: none;">
                            <h2 class="maintxt11">Rolex Submariner</h2>
                        </a>
                    </div>
                </div>
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/yatmaster.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">LATEST 2025</p>
                        <a href="productdetail?productName=Rolex%20Yacht-Master" style="text-decoration: none;">
                            <h2 class="maintxt11">Rolex Yacht-Master</h2>
                        </a>
                    </div>
                </div>
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/Bat girl.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">Batman</p>
                        <a href="productdetail?productName= GMT-Master%20II" style="text-decoration: none;">
                            <h2 class="maintxt11">Rolex GMT-Master</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
        
        
        <div class="container11">
            <div class="card">
                <div class="firstcard" style="position: relative; z-index: 310; ">
                    <div class="textoomoon" data-aos="fade-up" data-aos-duration="1000">
                        <h1 class="symbol" >A TIMELESS SYMBOL</h1>
                        <h3 class="parag">NASA astronauts have relied on the Moonwatch for every moon landing, starting with Apollo 11 in 1969. The latest version stays true to the iconic 4th generation design that journeyed into space. It features all the hallmark elements, including the distinctive 42 mm asymmetrical stainless steel case.</h3>
                    </div>
                    <div class="watchimgbig">
                        <img src="${pageContext.request.contextPath}/assets/PNG/Omega.png">
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="secondcard">
                    <div class="cardimg">
                        <div class="moonsurface">
                            <img src="${pageContext.request.contextPath}/assets/img/moonsoil.jpg">
                        </div>
                        <div class="caliber">
                            <img src="${pageContext.request.contextPath}/assets/PNG/caliber.png" alt="">
                        </div>
                        <div class="textcalb">
                            <div class="textleft" data-aos="fade-up" data-aos-duration="1000">
                                <h1 class="headtxts">CALIBER</h1>
                                <h2 class="headtxts">PERPETUAL 3135</h2>
                                <h3 class="bottomtxt">A technical achievement, the Calibre 3861 traces its lineage to the first watch worn on the moon. This powerhouse is the first Co- Axial Master Chronometer movement inside a Moonwatch, boasting superb power reserve, chronometric performance and magnetic resistance.</h3>
                            </div>
                            <div class="textright" data-aos="fade-up" data-aos-duration="1000">
                                <h1 class="maintxtuu">50 HOURS POWER RESERVE</h1>
                                <h1 class="maintxtuu">MANUAL-WINDING</h1>
                                <h1 class="maintxtuu">FREQUENCY 3 HZ</h1>
                                <div class="imaguu">
                                    <img src="${pageContext.request.contextPath}/assets/PNG/c50htz.png" class="basndas">
                                    <img src="${pageContext.request.contextPath}/assets/PNG/sett.png" class="basndas">
                                    <img src="${pageContext.request.contextPath}/assets/PNG/frequency.png" class="basndas">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="thirdcard" style="position: relative; z-index: 310; ">
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
                                <a href="productdetail?productName= GMT-Master%20II"><img src="${pageContext.request.contextPath}/assets/PNG/Smolpng.png" alt="" class="smolroleee"></a>
                                <div class="textooo" style="cursor: pointer;">
                                    <a href="Collection">
                                        <h1 class="mastertxtoo">THE ROLEX GMT-MASTER </h1>
                                    </a>
                                    <a href="productdetail?productName= GMT-Master%20II">
                                        <h1 class="mastertxtoo">BATMAN, 124536LB</h1>
                                    </a>
                                    <h3 class="transparntoo">40 mm, White Gold</h3>
                                    <a href="productdetail?productName= GMT-Master%20II">
                                        <h2 class="classooo">USD $14,000</h2>
                                    </a>
                                    <a href="Collection">
                                        <h3 class="shopnow">Shop Now</h3>
                                    </a>
                                    <a href="" class="cartimg"> <img src="${pageContext.request.contextPath}/assets/PNG/Cartsml.png" alt=""></a>
                                    <img src="${pageContext.request.contextPath}/assets/PNG/vector3.png" class="vector3">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="Gmtfinalvid">
                      <video autoplay loop muted playsinline 
                      src="${pageContext.request.contextPath}/assets/Video/thirdvid.mp4"></video>
                  
                    </div>
                </div>
            </div>
             
        </div>
        <footer class="footer1111">
            <img src="${pageContext.request.contextPath}/assets/img/1st footer.png" style="padding-top: 82px;">
            <div class="footerbody" style="position: relative; top: -10px;">
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
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
</body>

</html>