<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
            <c:if test="${empty customerList}">
                <h2 style="color: red">Customer list empty</h2>
            </c:if>

            <c:if test="${not empty customerList}">
                <table class="table table-success table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>TYPE</th>
                    <th>NAME</th>
                    <th>BIRTHDAY</th>
                    <th>GENDER</th>
                    <th>IDCARD</th>
                    <th>PHONE</th>
                    <th>EMAIL</th>
                    <th>ADDRESS</th>
                    <th colspan="2">ACTION</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td>${customer.id}</td>
                    <td>
                        <c:choose>
                            <c:when test="${customer.typeCustomer == 1}">Diamond</c:when>
                            <c:when test="${customer.typeCustomer == 2}">Platinum</c:when>
                            <c:when test="${customer.typeCustomer == 3}">Gold</c:when>
                            <c:when test="${customer.typeCustomer == 4}">Silver</c:when>
                            <c:when test="${customer.typeCustomer == 5}">Member</c:when>
                        </c:choose>
                    </td>
                    <td>${customer.name}</td>
                    <td>${customer.birthday}</td>
                    <td>
                        <c:choose>
                            <c:when test="${customer.gender == 0}">Male</c:when>
                            <c:when test="${customer.gender == 1}">Female</c:when>
                            <c:otherwise>Other</c:otherwise>
                        </c:choose>
                    </td>
                    <td>${customer.idCard}</td>
                    <td>${customer.phoneNumber}</td>
                    <td>${customer.email}</td>
                    <td>${customer.address}</td>
                    <td><!-- Button trigger modal -->
                        <a href="/customer?action=detail&id=${customer.id}" class="btn btn-sm btn-warning">Edit</a>
                    </td>
                    <td>
                        <button onclick="onDeleteCustomer(${customer.id})" type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete
                        </button>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
            </c:if>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">CONFIRM DELETE</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form action="/customer" method="post">
                            <input type="hidden" name="id" id="idCustomer">
                            <input type="hidden" name="action" value="delete">
                            <div class="modal-body">
                                Are you sure delete?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                <button type="submit" class="btn btn-primary">Yes</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
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

<script>
    function onDeleteCustomer(id) {
       document.getElementById("idCustomer").value = id;
    }
</script>

</body>
</html>
