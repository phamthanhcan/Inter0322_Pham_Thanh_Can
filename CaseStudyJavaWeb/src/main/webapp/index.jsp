<%--
  Created by IntelliJ IDEA.
  User: phamt
  Date: 28/03/2022
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>CasestudJavaWeb</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
  <div class="main">
    <div class="header">
      <div class="header_top">
        <a href="" class="header_top-logo">
          <img class="header_top-logo-img" src="images/logo.png" alt="">
        </a>
        <p class="header_top-name">PHAM THANH CAN</p>
      </div>
      <div class="header_navbar">
        <ul class="header_navbar-list">
          <li class="header_navbar-item">
            <a href="">Home</a>
          </li>
          <li class="header_navbar-item">
            <a href="">Employee</a>
          </li>
          <li class="header_navbar-item">
            <a href="">Customer</a>
          </li>
          <li class="header_navbar-item">
            <a href="">Service</a>
          </li>
          <li class="header_navbar-item">
            <a href="">Contract</a>
          </li>
        </ul>
        <div class="header_navbar-input">
          <input type="text" placeholder="search">
          <i class="fa-solid fa-magnifying-glass"></i>
        </div>

      </div>
    </div>

    <div class="body">
      <div class="body_category">
        <ul>
          <li><a href="">Item One</a></li>
          <li><a href="">Item Two</a></li>
          <li><a href="">Item Three</a></li>
        </ul>
      </div>
      <div class="body_content">
        <p>Body...</p>
      </div>
    </div>

    <div class="footer">Footer...</div>
    <script src="handle.js"></script>
  </div>
  </body>
</html>
