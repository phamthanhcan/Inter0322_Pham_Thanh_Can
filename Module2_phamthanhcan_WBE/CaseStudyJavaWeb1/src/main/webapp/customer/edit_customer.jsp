<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../base.css">
</head>
<body>

<div class="container">
    <div class="header">
        <div class="header_top">
            <div class="header_top-logo">
                <img src="../images/logo.png">
            </div>
            <a href="#" class="user_name">Phạm Thành Can</a>
        </div>

        <div class="header_navbar">
            <ul class="nav navbar_list" >
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/employee">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/customer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contract</a>
                </li>
            </ul>

            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
        </div>
    </div>
    <div class="body row">
        <div class="col-md-2">
            <div class="body_category">
                <ul>
                    <li>
                        <a href="/customer">Display customers list</a>
                    </li>
                    <li>
                        <a href="/customer?action=create">Add new customer</a>
                    </li>
                </ul>
            </div>

        </div>
        <div class="body_content col-md-10">
            <h2>CUSTOMER</h2>
            <form action="/customer" method="post" class="row g-3 needs-validation">
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="customer_id" value="${customer.id}">
                <div class="col-md-2">
                    <label class="form-label">ID:</label>
                    <p style="background-color: white;height: 36px;border-radius: 5px;padding: 7px;">${customer.id}</p>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Customer Type</label>
                    <select class="form-select" name="customer_type" required>
                        <c:if test="${customer.typeCustomer == 1}">
                            <option value="1" selected="selected">Diamond</option>
                            <option value="2">Platinum</option>
                            <option value="3">Gold</option>
                            <option value="4">Silver</option>
                            <option value="5">Member</option>
                        </c:if>
                        <c:if test="${customer.typeCustomer == 2}">
                            <option value="1">Diamond</option>
                            <option value="2" selected="selected">Platinum</option>
                            <option value="3">Gold</option>
                            <option value="4">Silver</option>
                            <option value="5">Member</option>
                        </c:if>
                        <c:if test="${customer.typeCustomer == 3}">
                            <option value="1">Diamond</option>
                            <option value="2">Platinum</option>
                            <option value="3" selected="selected">Gold</option>
                            <option value="4">Silver</option>
                            <option value="5">Member</option>
                        </c:if>
                        <c:if test="${customer.typeCustomer == 4}">
                            <option value="1">Diamond</option>
                            <option value="2">Platinum</option>
                            <option value="3">Gold</option>
                            <option value="4" selected="selected">Silver</option>
                            <option value="5">Member</option>
                        </c:if>
                        <c:if test="${customer.typeCustomer == 5}">
                            <option value="1">Diamond</option>
                            <option value="2">Platinum</option>
                            <option value="3">Gold</option>
                            <option value="4">Silver</option>
                            <option value="5" selected="selected">Member</option>
                        </c:if>

                    </select>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Customer Name</label>
                    <input type="text" class="form-control" name="customer_name" value="${customer.name}" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Birthday</label>
                    <input type="text" class="form-control" name="customer_birthday" value="${customer.birthday}" required>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Gender</label>
                    <select class="form-select" name="customer_gender" required>
                        <c:if test="${customer.gender == 0}">
                            <option value="0" selected="selected">Male</option>
                            <option value="1">Female</option>
                            <option value="2">Other gender</option>
                        </c:if>
                        <c:if test="${customer.gender == 1}">
                            <option value="0">Male</option>
                            <option value="1" selected="selected">Female</option>
                            <option value="2">Other gender</option>
                        </c:if>
                        <c:if test="${customer.gender == 2}">
                            <option value="0">Male</option>
                            <option value="1">Female</option>
                            <option value="2" selected="selected">Other gender</option>
                        </c:if>
                    </select>
                </div>
                <div class="col-md-5">
                    <label class="form-label">ID Card</label>
                    <input type="text" class="form-control" name="customer_id_card" value="${customer.idCard}" required>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Phone Number</label>
                    <input type="text" class="form-control" name="customer_phone" value="${customer.phoneNumber}" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" name="customer_email" value="${customer.email}" required>
                </div>
                <div class="col-md-5">
                    <label class="form-label">Address</label>
                    <input type="text" class="form-control" name="customer_address" value="${customer.address}" required>
                </div>
                <div class="col-12">
                    <input value="Update" class="btn btn-primary" type="submit">
                </div>
            </form>
        </div>
    </div>
    <div class="footer">
        <h2>Footer</h2>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="../bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
