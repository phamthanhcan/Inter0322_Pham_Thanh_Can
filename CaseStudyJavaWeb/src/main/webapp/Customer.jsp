<%--
  Created by IntelliJ IDEA.
  User: phamt
  Date: 29/03/2022
  Time: 8:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="bootstrap-5.1.3/bootstrap-5.1.3-dist/css/bootstrap.css">
    <script src="bootstrap-5.1.3/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="customer.css">
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
                    <a href="" class="active">Customer</a>
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

    <div class="body row">
        <div class="body_category col-md-4">
            <ul>
                <li><a href="">Display list customer</a></li>
                <li><a href="" class="active">Add new customer</a></li>
                <li><a href="">Edit customer</a></li>
            </ul>
        </div>
        <div class="body_content col-md-9">
            <form action="" class="form">
                <h2 class="form-title">ADD NEW CUSTOMER</h2>
                <div class="form-control">
                    <label>ID Customer:</label>
                    <input type="text" id="id" placeholder="ID">
                    <span></span>
                </div>

                <div class="form-control">
                    <label>Customer Name:</label>
                    <input type="text" id="name" placeholder="Name">
                    <span></span>
                </div>
                <div class="form-control">
                    <label>Birthday:</label>
                    <input type="text" id="birthday" placeholder="Birthday">
                    <span></span>
                </div>
                <div class="form-control">
                    <label>Choose Gender:</label>
                    <select id="gender">
                        <option value="male">Male</option>
                        <option value="male">Female</option>
                        <option value="male">Other</option>
                    </select>
                </div>
                <div class="form-control">
                    <label>ID Card:</label>
                    <input type="text" id="id_card" placeholder="ID Card">
                    <span></span>
                </div>
                <div class="form-control">
                    <label>Phone Number:</label>
                    <input type="text" id="phone" placeholder="Phone Number">
                    <span></span>
                </div>
                <div class="form-control">
                    <label>Email:</label>
                    <input type="text" id="email" placeholder="Email">
                    <span></span>
                </div>
                <div class="form-control">
                    <label>Address:</label>
                    <input type="text" id="address" placeholder="Address">
                    <span></span>
                </div>

                <input type="submit" value="ADD NEW CUSTOMER" class="btn-add"placeholder="Add New">
            </form>


            <div class="display_customer hide">
                <div class="row">
                    <div class="search-box col-md-12">
                        <input type="text" placeholder="Search customer">
                        <button class="btn_search">Search</button>
                    </div>
                </div>
                <table class="table table-success table-striped">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">ID</th>
                        <th scope="col">TYPE</th>
                        <th scope="col">NAME</th>
                        <th scope="col">BIRTHDAY</th>
                        <th scope="col">GENDER</th>
                        <th scope="col">ID CARD</th>
                        <th scope="col">PHONE</th>
                        <th scope="col">EMAIL</th>
                        <th scope="col">ADDRESS</th>
                        <th scope="col">ACTION</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>01</td>
                        <td>Diamond</td>
                        <td>CAN</td>
                        <td>06/10/2000</td>
                        <td>MALE</td>
                        <td>221451639</td>
                        <td>0921194881</td>
                        <td>thanhcan@gmail.com</td>
                        <td>Da Nang</td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">NOTIFICATION</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Successfull Delete!
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>02</td>
                        <td>Platinum</td>
                        <td>NHU</td>
                        <td>06/10/2000</td>
                        <td>FEMALE</td>
                        <td>221412339</td>
                        <td>0382891684</td>
                        <td>baonhu@gmail.com</td>
                        <td>Phu Yen</td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">NOTIFICATION</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Successfull Delete!
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <nav aria-label="Page navigation example col-md-12">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>



        </div>
    </div>

    <div class="footer">Footer...</div>
</div>

<script src="handle.js"></script>
</body>
</html>
