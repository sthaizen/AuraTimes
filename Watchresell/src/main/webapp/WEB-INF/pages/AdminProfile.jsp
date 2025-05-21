<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>



 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="UTF-8">

 <meta http-equiv="X-UA-Compatible" content="IE=edge">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title> Admin Dashboard</title>

 <link rel="icon" href="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" type="image/x-icon">

 

 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminDashBoard.css" />

 <style>

 /*user css*/

.user-container {

 background-color: white;

 padding: 30px;

 border-radius: 10px;

 max-width: 1500px;

 margin: auto;

 box-shadow: 0 0 10px rgba(0,0,0,0.1);

 margin-left: 80px;

 margin-bottom: 30px;

 margin-top: 50px;

 }



 .user-container h2 {

 color: #c084fc;

 }

 

.container1{



	background-color: white;

 padding: 30px;

 border-radius: 10px;

 max-width: 1500px;

 margin: auto;

 box-shadow: 0 0 10px rgba(0,0,0,0.1);

 margin-left: 80px;

 margin-bottom: 30px;

 margin-top: 50px;



}



 .container1 h2 {

 color: #c084fc;

 }





.btn {

 padding: 8px 16px;

 border: none;

 border-radius: 5px;

 cursor: pointer;

}



.btn-dashboard {

 background-color: #22c55e;

 color: #fff;

 margin-bottom: 16px;

}



table {

 width: 100%;

 border-collapse: collapse;

 margin-top: 16px;

}



th, td {

 text-align: left;

 padding: 12px;

 border-bottom: 1px solid #334155;

}



.role-user {

 background-color: #3b82f6;

 padding: 5px 10px;

 border-radius: 5px;

 color: #fff;

 font-size: 14px;

}



.role-admin {

 background-color: #ef4444;

 padding: 5px 10px;

 border-radius: 5px;

 color: #fff;

 font-size: 14px;

}



.profile-yes {

 background-color: #22c55e;

 padding: 5px 10px;

 border-radius: 5px;

 font-size: 14px;

 color: #fff;

}



.btn-delete {

 background-color: #ef4444;

 margin-right: 8px;

 color: #fff;

}





 .btn-edit {

 background-color: #3b82f6;

 color: #fff;

 }



 .actions {

 display: flex;

 }

 

 .success-message {

 background-color: #d4edda;

 color: #155724;

 padding: 10px 15px;

 border: 1px solid #c3e6cb;

 border-radius: 5px;

 margin-bottom: 15px;

 font-weight: bold;

}

 

 /* Styles for Account Settings section inside .container1 */



.container1 .accset {

 font-size: 28px;

 font-weight: bold;

 color: #1f2937;

 margin-bottom: 10px;

}



.container1 .genral {

 font-size: 20px;

 font-weight: 900;

 color: #8b5cf6;

 margin-bottom: 5px;

}



.container1 .parg {

 font: 14px;

 color: #374151;

 margin-bottom: 15px;

}



.container1 .placefield {

 display: flex;

 justify-content: space-between;

 gap: 40px;

 margin-top: 20px;

}



.container1 .lefttext,

.container1 .righttxt {

 width: 48%;

}



.container1 .placetxt1,

.container1 .placetxt2 {

 font-size: 14px;

 font-weight: 500;

 color: #111827;

 margin-bottom: 5px;

}



.container1 .plcholder {

 width: 100%;

 padding: 10px;

 font-size: 14px;

 border: 1px solid #d1d5db;

 border-radius: 5px;

 margin-bottom: 20px;

 box-sizing: border-box;

}



.container1 .plcholder:focus {

 outline: none;

 border-color: #8b5cf6;

 box-shadow: 0 0 5px rgba(139, 92, 246, 0.5);

}



.container1 .buttons {

 margin-top: 20px;

 

}

 .save-btn {

 width: 150px;

 height: 38px;

 background-color: #4D55CC;

 color: white;

 padding: 10px;

 font-size: 16px;

 border: none;

 border-radius: 4px;

 cursor: pointer;

 transition: background-color 0.2s ease;

}



.save-btn:hover {

 background-color: #8990ea;

}



.save-btn:active {

 background-color: #b9ccec;

}



 </style>

</head>



<body>



 <!-- =============== Navigation ================ -->

 <div class="container">

 <div class="navigation">

 <ul>

 <li>

 <a href="#">

 <span class="icon">

 <img src="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" alt="logo" style="width: 30px;">

 </span>

 <span class="title" style="margin-bottom: 20px;">Aura Watch</span>

 </a>

 </li>

 <li>

 <a href="adminProfile">

 <span class="icon">

 <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/user.png" alt="logo" style="width: 30px;"></div>

 </span>

 <span class="title">Profile</span>

 </a>

 </li>

 



 <li>

 <a href="AdminDashBoard">

 <span class="icon">

 <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/sales.png" alt="logo" style="width: 35px;"></div>

 </span>

 <span class="title">Stats</span>

 </a>

 </li>

 <li>

 <a href="Collection">

 <span class="icon">

 <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/home.png" alt="logo" style="width: 30px;"></div>

 </span>

 <span class="title">Collection</span>

 </a>

 </li>



 <li>

 <a href="dashBoardProduct">

 <span class="icon">

 <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/product.png" alt="logo" style="width: 35px;"></div>

 </span>

 <span class="title">Products</span>

 </a>

 </li>

 





 <li style="margin-top: 30px;">

 

 <a href="logout">

 <span class="icon">

 <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/logout.png" alt="logo" style="width: 30px;"></div>

 </span>

 <span class="title">Log Out</span>

 </a>

 </li>

 </ul>

 </div>



 <!-- ========================= Main ==================== -->

 <div class="main">

 <div class="topbar">

 <div class="toggle">



 <img src="${pageContext.request.contextPath}/assets/img/menu.png" alt="" width="30px">

 </div>

 </div>



 





 <!-- =========== Scripts ========= -->

 <script>

 // add hovered class to selected list item

 let list = document.querySelectorAll(".navigation li");



 function activeLink() {

 list.forEach((item) => {

 item.classList.remove("hovered");

 });

 this.classList.add("hovered");

 }



 list.forEach((item) => item.addEventListener("mouseover", activeLink));



 // Menu Toggle

 let toggle = document.querySelector(".toggle");

 let navigation = document.querySelector(".navigation");

 let main = document.querySelector(".main");



 toggle.onclick = function () {

 navigation.classList.toggle("active");

 main.classList.toggle("active");

 };

 </script>



 

 <!---for user view and delete-->

<!--Manage Users Section----- -->



<div class="user-container">



 <!-- Section Header -->

 <h2>Manage Users</h2>

 <p>Manage all users in the system</p>

 <br>



 <!-- Display success message if a user was deleted -->

 <c:if test="${not empty sessionScope.deleteStatus}">

 <div class="success-message">

 ${sessionScope.deleteStatus}

 </div>

 <!-- Remove the message from session after displaying to avoid repeat on refresh -->

 <c:remove var="deleteStatus" scope="session" />

 </c:if>



 <!-- Form for deleting users -->

 <form action="DeleteUserUtil" method="post">

 

 <!-- Table for listing users -->

 <table>

 <thead>

 <tr>

 <th>User Name</th>

 <th>Email</th>

 <th>Phone Number</th>

 <th>D.O.B</th>

 <th>Profile</th>

 <th>Gender</th>

 <th>Actions</th>

 </tr>

 </thead>



 <tbody>

 <!-- Loop through the list of users and display each one -->

 <c:forEach var="user" items="${adminUsers}">

 <tr>

 <td>${user.username}</td>

 <td>${user.email}</td>

 <td>${user.phoneNumber}</td>

 <td>${user.dateOfBirth}</td>

 

 <!-- Assume all users have a profile; statically showing 'Yes' -->

 <td><span class="profile-yes">Yes</span></td>

 <td>${user.gender}</td>



 <!-- Button to delete this specific user -->

 <td class="actions">

 <button type="submit" name="delete" value="${user.username}" class="btn btn-delete">Remove</button>

 </td>

 </tr>

 </c:forEach>

 </tbody>

 </table>

 </form>

</div>





<!-- Admin profile details edit section--- -->

 <main>

 <div class="container1">

 <div class="Glasscontainer">

 <div class="toptext">

 <h2 style="margin-bottom: 20px;">Admin Account Settings</h2>

 

 <div>

 <p style="margin-bottom: 10px;">Setup your admin accounts and change password</p>

 </div>

 

 </div>

 <!-- Display validation messages -->

 <div>

 <% String status = (String) request.getAttribute("status"); %>

 <% if (status != null) { %>

 <div class="parg">

 <%= status %>

 </div>

 <% } %>

 </div>



 <div class="placefield">

 <div class="lefttext" style="padding-left: 93px;">

 <form action="adminProfile" method="post">

 <!-- Hidden field to identify this as a profile update action -->

 <input type="hidden" name="action" value="update">

 

 <%

	String fullName = (session.getAttribute("FullName") != null) ? session.getAttribute("FullName").toString() : "";

	String username = (session.getAttribute("Username") != null) ? session.getAttribute("Username").toString() : "";

	String dob = (session.getAttribute("DateOfBirth") != null) ? session.getAttribute("DateOfBirth").toString() : "";

	String gender = (session.getAttribute("Gender") != null) ? session.getAttribute("Gender").toString() : "";

	String phone = (session.getAttribute("PhoneNumber") != null) ? session.getAttribute("PhoneNumber").toString() : "";

	String email = (session.getAttribute("Email") != null) ? session.getAttribute("Email").toString() : "";

	%>

 <div >

 <h3 class="placetxt1">Full Name</h3>



 <input type="text" name="FullName" placeholder="<%= session.getAttribute("FullName") %>" required class="plcholder" ><br>

 </div>

 <div>

 <h3 class="placetxt1">Date of Birth</h3>

 <input type="date" name="Dateobirth" placeholder="<%= session.getAttribute("DateOfBirth") %>" required class="plcholder" >

 </div>

 <div>

 <h3 class="placetxt1">Gender</h3>

 <input type="gender" name="Gender" placeholder="<%= session.getAttribute("Gender") %>" required class="plcholder" ><br>

 </div>

 <div>

 <h3 class="placetxt1">Phone Number</h3>

 <input type="number" name="Phonenumber" placeholder="<%= session.getAttribute("PhoneNumber") %>" required class="plcholder" ><br>

 </div> 

 </div>

 <div class="righttxt" >

 

 <div >

 <h3 class="placetxt2">User Name (Must be Same as present)</h3>

 <input type="text" name="Username" placeholder="<%= session.getAttribute("Username")%>" required class="plcholder" ><br>

 </div>

 <div>

 <h3 class="placetxt2">Email</h3>

 <input type="datetime" name="Email" placeholder="<%= session.getAttribute("Email") %>" required class="plcholder" >

 </div>

 <div>

 <h3 class="placetxt2">Change Password</h3>

 <input type="password" name="Password" placeholder="New Password" required class="plcholder" ><br>

 </div>

 



 <div class="buttons">

 <button type="submit" class="save-btn" value="update">Save Changes</button>

 

 </div>

 </form>

 </div>

 </div>



 </div>

 </div>

 </main>

</body>



</html>