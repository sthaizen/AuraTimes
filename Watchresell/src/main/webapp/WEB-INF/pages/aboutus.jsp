<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us | Auratimes</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aboutus.css" />
</head>
<body>

    <!-- Hero Section with Background Image -->
    <header class="hero">
        <div class="overlay">

            <div class="hero-content">
                <h1>About Us</h1>
                <p>AURA Watch</p>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section class="about-section">
    <div class="about-left slider-container">
        <div class="slider">
            <img src="${pageContext.request.contextPath}//assets/img/ghadi1.jpg" alt="Slide 1">
            <img src="${pageContext.request.contextPath}//assets/img/time1.jpg" alt="Slide 2">
            <img src="${pageContext.request.contextPath}//assets/img/time2.jpg" alt="Slide 3">
        </div>
    </div>
        <div class="about-right">
            <h2>Let <span>tomorrow</span> begin <span>today</span>.</h2>
            <p>
  At Auratimes, we believe that a watch is more than just a timepiece — it's a statement of style, identity, and craftsmanship. Our passion drives us to curate premium collections that blend modern innovation with timeless design. Whether you're looking for elegance, sportiness, or everyday sophistication, Auratimes brings you watches that speak your language. Every tick tells your story.
</p>

            <ul>
                <li><strong>Our Mission:</strong> We empower people through smart, innovative solutions that simplify challenges and unlock opportunities. Our goal is to drive meaningful progress in an evolving digital world.</li>
                <li><strong>Our Vision:</strong>To become a global leader in digital commerce by delivering trusted, cutting-edge solutions that redefine industry standards and inspire growth. </li>
                <li><strong>Our Strategy:</strong> Innovate, adapt, and grow with integrity.</li>
            </ul>
        </div>
    </section>
    
    
  <!-- Why Choose Us Section -->
<section class="why-choose-us">
    <h2>Why Choose Us</h2>
    <div class="features-container">
        <div class="feature-box">
            <h3>Fast Delivery</h3>
            <p>Get your timepiece delivered quickly and securely.</p>
        </div>
        <div class="feature-box">
            <h3>Smartly Executed</h3>
            <p>Every design is crafted with precision and passion.</p>
        </div>
        <div class="feature-box">
            <h3>Carefully Planned</h3>
            <p>From concept to wrist, every step is thoughtful.</p>
        </div>
        <div class="feature-box">
            <h3>Elegent Style</h3>
            <p>Blending aesthetics and functionality seamlessly.</p>
        </div>
    </div>
</section>
     
    
 <!-- Partner/Brand Names Section -->
<section class="brand-logos-text">
    <div class="brand-container">
        <div class="brand-name">4🎖️<br><span>Best Watch Award </span></div>
        <div class="brand-name">13400+<br><span>Watches Sold</span></div>
        <div class="brand-name">2<br><span>International Awards</span></div>
        <div class="brand-name">19⌛<br><span>Years Of Experience</span></div>
    </div>
</section>

    

    <!-- Team Section -->
<section class="team-section">
  <h2>Meet The Legends</h2>
  <div class="team-container">
    
    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/saroj.jpg');"></div>
      <h3>Sujal Parajuli </h3>
      <p>CEO</p>
      <div class="team-socials">
        <a href="https://www.instagram.com/_itssujallll/" target="_blank"><button>Contact</button></a>
      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/rekha.jpg');"></div>
      <h3>Yethartha Shrestha</h3>
      <p>Marketing Head</p>
      <div class="team-socials">
        <a href="https://www.instagram.com/rc_2555/" target="_blank"><button>Contact</button></a>
      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/anil.jpg');"></div>
      <h3>Niran Bhatta</h3>
      <p>Creative Director</p>
      <div class="team-socials">
        <a href="https://www.instagram.com/bhatteyy_/" target="_blank"><button>Contact</button></a>
      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/bibek.jpg');"></div>
      <h3>Waseem Malik</h3>
      <p>Lead Developer</p>
      <div class="team-socials">
        <a href="https://www.instagram.com/_waseem.malik/" target="_blank"><button>Contact</button></a>
      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/smriti.jpg');"></div>
      <h3>Sakshyam Kafle</h3>
      <p>COO</p>
      <div class="team-socials">
        <a href="https://www.instagram.com/sakshyam.888/" target="_blank"><button>Contact</button></a>
      </div>
    </div>

  </div>
</section>
<script>
    let index = 0;
    const slides = document.querySelectorAll('.slider img');

    function showSlide() {
        slides.forEach((img, i) => {
            img.style.display = i === index ? 'block' : 'none';
        });
        index = (index + 1) % slides.length;
    }

    showSlide(); // Initial display
    setInterval(showSlide, 3000); // Change image every 3 seconds
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