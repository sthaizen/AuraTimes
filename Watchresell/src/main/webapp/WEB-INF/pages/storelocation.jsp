<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/storelocation.css" />
    <style>
    /* Simple fade-in animation */
    .hidden {
        opacity: 0;
        transform: translateY(20px);
        transition: all 0.6s ease-out;
    }
    
    .fade-in {
        opacity: 1;
        transform: translateY(0);
    }
   <style>
   		body{
   			background-image: url(clock.png);
   			height: 100vh;
   			background-size: cover;
   			background-position: centre;
   		}
   	<style>
   	
    </style>
</head>
<body>

    <header>
        <div class="header-left">
            <div class="menu-icon">☰ Menu</div>
        </div>
        <div class="header-center">
            <h1>STORE LOCATION</h1>
        </div>
        <div class="header-right">
            <nav class="main-nav">
                <ul>
                    <li><a href="#">Collections</a></li>
                    <li><a href="contact">Contact</a></li>
                    <li><a href="addtocart">Add to cart</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="map-section">
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1891.5931281186079!2d74.37743064601462!3d31.520729121362006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3919050f875e9f89%3A0xc8eec622d30e6ce5!2sTHE%20AURA%20TIMES!5e0!3m2!1sen!2snp!4v1745151606553!5m2!1sen!2sn" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>

    <div class="company-description">
        <div class="description-container hidden">
            <h2> AURA TIMES</h2>
            <p>AURA is a premier watch company dedicated to crafting timeless timepieces that blend elegance with precision engineering. Founded in Kathmandu, Nepal, we take pride in our heritage while embracing modern design and technology.</p>
            <p>Our watches are more than just timekeeping devices - they're statements of style, craftsmanship, and personal expression. Each piece is meticulously designed to stand the test of time, just like the moments they measure.</p>
        </div>
    </div>

   

    <script>
    // Animate menu icon with a simple slide-in effect
    document.addEventListener('DOMContentLoaded', () => {
        const menuIcon = document.querySelector('.menu-icon');
        menuIcon.style.opacity = 0;
        menuIcon.style.transform = 'translateX(-20px)';
        setTimeout(() => {
            menuIcon.style.transition = 'all 0.6s ease';
            menuIcon.style.opacity = 1;
            menuIcon.style.transform = 'translateX(0)';
        }, 300);
        
        // Smooth scroll for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
        
        // Fade-in effect on scroll
        const observer = new IntersectionObserver(entries => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('fade-in');
                }
            });
        }, {
            threshold: 0.1
        });
        
        document.querySelectorAll('.footer-column, .map-container, .description-container').forEach(el => {
            el.classList.add('hidden');
            observer.observe(el);
        });
    });
    </script>
    
</body>
 <footer class="footer1111">
            <img src="${pageContext.request.contextPath}/assets/img/1st footer.png" style="padding-top: 82px;">
            <div class="footerbody" style="position: relative; top: -10px;">
                <div class="logos">
                    <img src="${pageContext.request.contextPath}/assets/Logo/bigblacklogo.png" >
                    <p class="follow">Follow us on</p>
                
                <div class="icons">
                    <a href=""><img src="${pageContext.request.contextPath}/assets/Logo/facebook.png" alt=""></a>
                    <a href=""><img src="${pageContext.request.contextPath}/assets/Logo/twitter.png" alt=""></a>
                    <a href=""><img src="${pageContext.request.contextPath}/assets/Logo/youtube.png" alt=""></a>
                    <a href=""><img src="${pageContext.request.contextPath}/assets/Logo/github.png" alt=""></a>

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
                <h3 class="secondtxt">Sujal Parajuli</h3>
                <h3 class="secondtxt">Yathartha Shrestha</h3>
                <h3 class="secondtxt">Sakshyam Kafle</h3>
                <h3 class="secondtxt">Niran Bhatta</h3>
                <h3 class="secondtxt">Wassem Malik</h3>
            </div>

        </div>
            </div>
        </footer>
</html>