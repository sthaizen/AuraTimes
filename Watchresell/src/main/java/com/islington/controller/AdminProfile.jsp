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
    <!-- ======= Styles ====== -->
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

    .btn {
      padding: 0.5rem 1rem;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn-dashboard {
      background-color: #22c55e;
      color: #fff;
      margin-bottom: 1rem;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 1rem;
    }

    th, td {
      text-align: left;
      padding: 0.75rem;
      border-bottom: 1px solid #334155;
    }

    .role-user {
      background-color: #3b82f6;
      padding: 0.3rem 0.6rem;
      border-radius: 5px;
      color: #fff;
      font-size: 0.85rem;
    }

    .role-admin {
      background-color: #ef4444;
      padding: 0.3rem 0.6rem;
      border-radius: 5px;
      color: #fff;
      font-size: 0.85rem;
    }

    .profile-yes {
      background-color: #22c55e;
      padding: 0.3rem 0.6rem;
      border-radius: 5px;
      font-size: 0.85rem;
      color: #fff;
    }

    .btn-delete {
      background-color:#ef4444;
      margin-right: 0.5rem;
      color: #fff;
      
    }

    .btn-edit {
      background-color: #3b82f6;
      color: #fff;
    }

    .actions {
      display: flex;
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

            


    <!-- =========== Scripts =========  -->
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

    
            <!---for user view  and delete-->
    
  <div class="user-container">
    <h2>Manage Users</h2>
    <p>Manage all users in the system</p>
    <br>

    <form action="DeleteUserUtil" method="post">
    
      <table>
        <thead>
          <tr>
            <th>User Name</th>
            <th>Email</th>
            <th>PhoneNumber</th>
            <th>D.O.B</th>
			<th>Profile</th>
            <th>Gender</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
           <c:forEach var="user" items="${adminUsers}">
        <tr>
          <td>${user.username}</td>
          <td>${user.email}</td>
          <td>${user.phoneNumber}</td> 
          <td>${user.dateOfBirth}</td> 
		  <td><span class="profile-yes">Yes</span></td>
          <td>${user.gender}</td>
          <td class="actions">
            <button type="submit" name="delete" value="${user.username}" class="btn btn-delete">Remove</button>
          </td>
        </tr>
      </c:forEach>
      
        </tbody>
      </table>
    </form>
  </div>
   
</body>

</html>