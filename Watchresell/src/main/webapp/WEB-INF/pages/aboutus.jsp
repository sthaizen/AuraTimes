<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Aura</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
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
      <div class="team-photo" style="background-image: url('images/team/saroj.jpg'); list-style: none;"></div>
      <a href="Spindex" target="_blank"><h3 >Sujal Parajuli</h3></a>
      <p>CEO</p>
      <div class="team-socials">
 
      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/rekha.jpg');"></div>
       <a href="ysindex" target="_blank"><h3 >Yathartha Shrestha</h3></a>
      
      <p>Marketing Head</p>
      <div class="team-socials">

      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/anil.jpg'); list-style: none;"></div>
      <h3>Niran Bhatta</h3>
      <p>Creative Director</p>
      <div class="team-socials">

      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/bibek.jpg');"></div>
      <h3>Waseem Malik</h3>
      <p>Lead Developer</p>
      <div class="team-socials">

      </div>
    </div>

    <div class="team-member">
      <div class="team-photo" style="background-image: url('images/team/smriti.jpg');"></div>
      <h3>Sakshyam Kafle</h3>
      <p>COO</p>
      <div class="team-socials">

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
 
</html>