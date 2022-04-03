
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
                        <a href="/employee">Display employees list</a>
                    </li>
                    <li>
                        <a href="/employee?action=create">Add new employee</a>
                    </li>
                </ul>
            </div>

        </div>
        <div class="body_content col-md-10">
            <h2>EMPLOYEE</h2>
            <form action="/employee" method="post" class="row g-3 needs-validation">
                <input type="hidden" name="action" value="add">
                <div class="col-md-4">
                    <label class="form-label">ID</label>
                    <input type="text" class="form-control" name="employee_id" placeholder="ID" required>
                </div>

                <div class="col-md-4">
                    <label class="form-label">Employee Name</label>
                    <input type="text" class="form-control" name="employee_name" placeholder="Name" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Birthday</label>
                    <input type="text" class="form-control" name="employee_birthday" placeholder="yyyy/mm/dd" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Gender</label>
                    <select class="form-select" name="employee_gender" required>
                        <option value="0">Male</option>
                        <option value="1">Female</option>
                        <option value="2">Other gender</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">ID Card</label>
                    <input type="text" class="form-control" name="employee_id_card" placeholder="Id Card" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Phone Number</label>
                    <input type="text" class="form-control" name="employee_phone" placeholder="Phone" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" name="employee_email" placeholder="Email" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Address</label>
                    <input type="text" class="form-control" name="employee_address" placeholder="Address" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Salary</label>
                    <input type="text" class="form-control" name="employee_salary" placeholder="Salary" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Postion</label>
                    <select class="form-select" name="employee_position" required>
                        <option value="1">Receptionist</option>
                        <option value="2">Serve</option>
                        <option value="3">Expert</option>
                        <option value="4">Monitoring</option>
                        <option value="5">Manage</option>
                        <option value="6">President</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Education Degree</label>
                    <select class="form-select" name="employee_education" required>
                        <option value="1">Intermediate</option>
                        <option value="2">Colleges</option>
                        <option value="3">University</option>
                        <option value="4">After University</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Division</label>
                    <select class="form-select" name="employee_division" required>
                        <option value="1">Sale – Marketing</option>
                        <option value="2">Administrative</option>
                        <option value="3">Service</option>
                        <option value="4">Management</option>
                    </select>
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


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="../bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
