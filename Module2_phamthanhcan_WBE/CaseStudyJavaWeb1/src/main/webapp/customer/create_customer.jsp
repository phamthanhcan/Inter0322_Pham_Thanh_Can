
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
                <input type="hidden" name="action" value="add">
                <div class="col-md-4">
                    <label class="form-label">ID</label>
                    <input type="text" class="form-control" name="customer_id" placeholder="ID" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Customer Type</label>
                    <select class="form-select" name="customer_type" required>
                        <option value="1">Diamond</option>
                        <option value="2">Platinum</option>
                        <option value="3">Gold</option>
                        <option value="4">Silver</option>
                        <option value="5">Member</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Customer Name</label>
                    <input type="text" class="form-control" name="customer_name" placeholder="Name" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Birthday</label>
                    <input type="text" class="form-control" name="customer_birthday" placeholder="dd/mm/yyyy" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Gender</label>
                    <select class="form-select" name="customer_gender" required>
                        <option value="0">Male</option>
                        <option value="1">Female</option>
                        <option value="2">Other gender</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">ID Card</label>
                    <input type="text" class="form-control" name="customer_id_card" placeholder="ID Card" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Phone Number</label>
                    <input type="text" class="form-control" name="customer_phone" placeholder="Phone" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" name="customer_email" placeholder="Email" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Address</label>
                    <input type="text" class="form-control" name="customer_address" placeholder="Address" required>
                </div>
                <div class="col-12">
                    <input value="Add new" class="btn btn-primary" type="submit">
                </div>
            </form>
        </div>
    </div>
    <div class="footer">
        <h2>Footer</h2>
    </div>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="../bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
