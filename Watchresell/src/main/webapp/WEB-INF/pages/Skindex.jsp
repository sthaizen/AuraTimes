<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Sakshyam</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">
    <link rel="icon" href="Image/Comp_1_00000-removebg.png" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css" />
    
  </head>
  <body>
  </header>
    <nav >
      <div class="kajsndikujasdn">
      <div class="logo"> <b>Team Members </b></div>
      <div>
        <ul class="nav-links">
          
          <li><a href="#about">About Me</a></li>
          <li><a href="#experience">Experience</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="aboutus"><b> Back </b></a></li>
        </ul>
      </div>
    </nav>

    <section id="profile">
      <div class="section__pic-container">
        <img src="${pageContext.request.contextPath}/assets/All Images/riceball.png " alt="Yathartha Shrestha profile picture" />
      </div>
      <div class="section__text">
        <p class="section__text__p1">Nice to meet you! <br> I am</p>
        <h1 class="title"> Sakshyam Kafle</h1>
        <p class="section__text__p2">Business Administrator & Frontend Developer</p>
        <div class="btn-container">
         
          <a class="btn btn-color-1" href="#contact" style="text-decoration: none;">Connect with me</a>
            
          </button>
        </div>
         <!-- Social media icons-->
        <div id="socials-container">

          <a href="https://www.facebook.com/"><img src="${pageContext.request.contextPath}/assets/All Images/fb.png" alt="My Facebook profile" class="icon" /> </a>
          <a href="https://www.instagram.com/rc_2555/"><img src="${pageContext.request.contextPath}/assets/All Images/insta.png" alt="My Instagram profile"class="icon"/></a>
        </div>
      </div>
    </section>

    <section id="about">
      <div style="position: relative; left: 20px;">
      <p class="section__text__p1">Get To Know More</p>
      <h1 class="title">About Me</h1>
    </div>
      <div class="section-container">
        
        <div class="about-details-container">
          <div class="about-containers">
            <div class="details-container">

              <img src="${pageContext.request.contextPath}/assets/All Images/experience.png"alt="Experience icon" class="icon"/>
              <h3>Experience</h3>
              <p>2+ years <br />Business Administration<br> 1+ years <br> Fontend Developer</p>
            </div>
            <div class="details-container">
              <img src="${pageContext.request.contextPath}/assets/All Images/education.png" alt="Education icon" class="icon"
              />
              <h3>Education</h3>
              <p>Business: Diploma<br /> IT: Short Courses <br>B.Sc.(Computing): Running</p>
            </div>
          </div>
          <div class="text-container">
          
        </div>
      </div>
    </section>

    <section id="experience">
      <p class="section__text__p1">Explore My</p>
      <h1 class="title">Experience</h1>
      <div class="experience-details-container">
        <div class="about-containers">
          <div class="details-container">
            <h2 class="experience-sub-title">Business Administration</h2>
            <div class="article-container">
              <article>
                <img  src="${pageContext.request.contextPath}/assets/All Images/checkmark.png"   alt="Experience icon" class="icon"  />
                <div>
                  <h3>Team Management</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img src="${pageContext.request.contextPath}/assets/All Images/checkmark.png" alt="Experience icon"  class="icon"  />
                <div>
                  <h3>Project Planning</h3>
                  <p>Experienced</p>
                </div>
              </article>
             
             
              
            </div>
          </div>
          <div class="details-container">
            <h2 class="experience-sub-title">Frontend Developer</h2>
            <div class="article-container">
              <article>
                <img  src="${pageContext.request.contextPath}/assets/All Images/checkmark.png"  alt="Experience icon" class="icon" />
                <div>
                  <h3>HTML</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img  src="${pageContext.request.contextPath}/assets/All Images/checkmark.png"  alt="Experience icon"  class="icon" />
                <div>
                  <h3>CSS</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img  src="${pageContext.request.contextPath}/assets/All Images/checkmark.png"   alt="Experience icon"  class="icon" />
                <div>
                  <h3>JavaScript</h3>
                  <p>Experienced</p>
                </div>
              </article>
          
            </div>
          </div>
        </div>
      </div>
    
    
      <section id="contact">
        <p class="section__text__p1">Get in Touch</p>
        <h1 class="title">Contact Me</h1>
        <div class="contact-info-container">
          <img src="${pageContext.request.contextPath}/assets/All Images/email.png" alt="Email icon" class="icon contact-icon email-icon" />
          <p><a href="mailto:examplemail@gmail.com">sakshyamkafle20@gmail.com</a></p>
        </div>
      </section>
      

    <footer>
      <nav>
        <div class="nav-links-container">
          <ul class="nav-links">
            <li><a href="#about">About</a></li>
            <li><a href="#experience">Experience</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </nav>
      <p>Copyright &#169; 2025. Aura All Rights Reserved.</p>
    </footer>
  </div>

  </div>
    
  </body>
</html>
