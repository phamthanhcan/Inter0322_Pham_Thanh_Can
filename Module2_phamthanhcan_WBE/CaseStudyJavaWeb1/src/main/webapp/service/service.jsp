
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
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
                    <a class="nav-link" href="http://localhost:8080/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/customer">Customer</a>
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
        <div class="col-md-3">
            <div class="body_category">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Display Customer List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Add Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Edit Customer</a>
                    </li>
                </ul>
            </div>

        </div>
        <div class="body_content col-md-9">
            <h2>SERVICE</h2>
            <form class="row g-3 needs-validation" novalidate>
                <div class="col-md-4">
                    <label for="service_name" class="form-label">Service Name</label>
                    <input type="text" class="form-control" id="service_name" placeholder="name" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="col-md-2">
                    <label for="service_area" class="form-label">Service Area</label>
                    <input type="text" class="form-control" id="service_area" placeholder="Area" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="service_cost" class="form-label">Cost</label>
                    <input type="text" class="form-control" id="service_cost" placeholder="Cost" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="col-md-2">
                    <label for="max_people" class="form-label">Max People</label>
                    <input type="text" class="form-control" id="max_people" placeholder="0" required>
                    <div class="invalid-feedback">
                        ok
                    </div>
                </div>
                <div class="col-md-2">
                    <label for="rent_type" class="form-label">Rent Type</label>
                    <select class="form-select" id="rent_type" required>
                        <option selected disabled value="">Choose Type</option>
                        <option value="1">Villa</option>
                        <option value="2">House</option>
                        <option value="3">Room</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select a valid state.
                    </div>
                </div>
                <div class="col-md-3 hide" id="div_room_standard">
                    <label for="room_standard" class="form-label">Room Standard</label>
                    <input type="text" class="form-control" id="room_standard" placeholder="Room Standard" required>
                    <div class="invalid-feedback">
                        ok
                    </div>
                </div>
                <div class="col-md-7 hide" id="div_description">
                    <label for="service_description" class="form-label">Description</label>
                    <input type="text" class="form-control" id="service_description" placeholder="Description" required>
                    <div class="invalid-feedback">
                        ok
                    </div>
                </div>
                <div class="col-md-3 hide" id="div_pool_area">
                    <label for="pool_area" class="form-label">Pool Area</label>
                    <input type="text" class="form-control" id="pool_area" placeholder="Pool Area" required>
                    <div class="invalid-feedback">
                        ok
                    </div>
                </div>
                <div class="col-md-3 hide" id="div_number_floor">
                    <label for="number_floor" class="form-label">Number Of Floor</label>
                    <input type="text" class="form-control" id="number_floor" placeholder="1" required>
                    <div class="invalid-feedback">
                        ok
                    </div>
                </div>
                <div class="col-md-6 hide" id="select_free_service">
                    <label for="free_service" class="form-label">Free Accompanying Service</label>
                    <select class="form-select" id="free_service" required>
                        <option value="1">Karaoke</option>
                        <option value="2">Rent motorcycles</option>
                        <option value="3">Rent bicycle</option>
                        <option value="4">Morning buffet</option>
                        <option value="5">Afternoon buffet</option>
                        <option value="6">Evening buffet</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select a valid state.
                    </div>
                </div>
                <div class="col-12">
                    <button class="btn btn-primary" type="submit">Add New</button>
                </div>
            </form>
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
                    <th>ACTION</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${listCustomer}">
                    <tr>
                        <td>${customer.id}</td>
                        <td>${customer.typeCustomer}</td>
                        <td>${customer.name}</td>
                        <td>${customer.birthday}</td>
                        <td>${customer.gender}</td>
                        <td>${customer.idCard}</td>
                        <td>${customer.phoneNumber}</td>
                        <td>${customer.email}</td>
                        <td>${customer.address}</td>
                        <td><!-- Button trigger modal -->
                            <button type="button" class="btn btn-sm btn-warning">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

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
                        <div class="modal-body">
                            Are you sure delete?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                            <button type="button" class="btn btn-primary">Yes</button>
                        </div>
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
    $(document).ready(function () {
        $("#rent_type").click(function () {
            var rentTypeVal = $("#rent_type").val();
            if(rentTypeVal == 1) {
                $("#div_room_standard").removeClass("hide");
                $("#div_description").removeClass("hide");
                $("#div_pool_area").removeClass("hide");
                $("#div_number_floor").removeClass("hide");
                $("#select_free_service").addClass("hide");
            }
            else if(rentTypeVal == 2) {
                $("#div_room_standard").removeClass("hide");
                $("#div_description").removeClass("hide");
                $("#div_pool_area").addClass("hide");
                $("#div_number_floor").removeClass("hide");
                $("#select_free_service").addClass("hide");
            }
            else if(rentTypeVal == 3) {
                $("#select_free_service").removeClass("hide");
                $("#div_room_standard").addClass("hide");
                $("#div_description").addClass("hide");
                $("#div_pool_area").addClass("hide");
                $("#div_number_floor").addClass("hide");
            }
        });
    })
</script>

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
