<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Aura</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/initial.css" />
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const modal = document.getElementById("loginModal");
            const closeBtn = document.getElementById("closeModal");
    
            function showModal(e) {
                e.preventDefault(); // Stop link navigation
                modal.style.display = "flex";
            }
    
            // Attach click event to navigation links
            document.querySelectorAll('nav .inner-main-nav a').forEach(link => {
                link.addEventListener("click", showModal);
            });
    
            closeBtn.addEventListener("click", () => {
                modal.style.display = "none";
            });
        });
    </script>
    
</head>

<body>
    <header>
    <div id="main">
        <!-- Navigation -->
        <nav class="main-nav" style="top: 15px;">
            <div class="menuebar" style="position: relative; left: 60px; cursor: pointer;"><a class="Menu" href="login">Login/Register</a></div>
            <!-- <img src="../assets/PNG/Menulogo.png" class="logoasd"> -->
            <div class="logo" style="position: relative; left: 210px;"><img src="${pageContext.request.contextPath}/assets/PNG/Logo.png" alt="Logo" /></div>
            <div class="inner-main-nav">
                <ul>
                    <li id="coll"><a href="Collection.html">Collections</a></li>
                    <li id="coll"><a href="contact.html">Contact</a></li>
                    <li id="coll"><a href="addtocart.html">Add to cart</a></li>
                </ul>
            </div>
        </nav>
        <!-- Hidden Inside Menu -->
       <!-- Login Prompt Modal -->
<!-- Custom Modal -->
<div id="loginModal" class="modal-overlay" style="display: none;">
    <div class="modal-box">
      <h2 class="modal-title">Timeless Privilege Awaits</h2>
      <p class="modal-desc">Step into a curated world of precision, craftsmanship, and exclusivity. Be the first to access limited releases, private sales, and bespoke timepieces.</p>
      <div class="modal-actions">
        <a href="login" class="modal-btn primary-btn">Sign Up</a>
        <button id="closeModal" class="modal-btn secondary-btn">Close</button>
      </div>
    </div>
  </div>
  

        <main>
        <!-- Video background -->
        <video AUTOPLAY loop muted playsinline class="Video">
            <source src="${pageContext.request.contextPath}/assets/Video/initialpagevid.mp4" type="video/mp4" />
        </video>
        <!-- Overlay Text -->
        <div style="position: relative; top: -30px; left: 12px;">
            <p class="Newcoll">NEW COLLECTION OF 2025</p>
            <p class="Thesub">THE SUBMARINER SERIES</p>
            <a href="login" class="Launchtheexp">
                <p class="Launchthe">+ Sign up for early access</p>
                
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
                        <a href="#" style="text-decoration: none;">
                            <h2 class="maintxt11">Omega Speed Master</h2>
                        </a>
                    </div>
                </div>
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/Rolexsub.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">DAY-JUST</p>
                        <a href="#" style="text-decoration: none;">
                            <h2 class="maintxt11">Rolex Submariner</h2>
                        </a>
                    </div>
                </div>
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/yatmaster.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">LATEST 2025</p>
                        <a href="#" style="text-decoration: none;">
                            <h2 class="maintxt11">Rolex Yacht-Master</h2>
                        </a>
                    </div>
                </div>
                <div class="watchs1" data-aos="fade-left" data-aos-duration="500">
                    <img src="${pageContext.request.contextPath}/assets/img/Bat girl.png" alt="" class="watchimg ">
                    <div class="watchstxt">
                        <p class="toptxtt">Batman</p>
                        <a href="login" style="text-decoration: none;">
                            <h2 class="maintxt11">Rolex GMT-Master</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
</body>

</html>