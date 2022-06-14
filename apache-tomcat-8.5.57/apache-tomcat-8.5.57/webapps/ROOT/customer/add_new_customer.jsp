<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 6/2/2022
  Time: 8:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="\bootstrap\css\bootstrap.min.css">
    <style>
        .header-panel {
            background-color: #046056;
            height: 80px;
            width: 100%;
        }

        .content {
            background-color: white;
            width: 100%;
        }

        .bottom {
            background-color: #046056;
            height: 80px;
            width: 100%;
        }

        .custom_background {
            background-image: linear-gradient(to bottom right, #046056, #abd2cd);
            background-size: cover;
        }
    </style>
</head>
<body style="margin: 0; padding: 0">

<%-- THANH TIEU DE --%>

<div class="header-panel">
    <div class="row" style="height: 80px;margin: 0;padding: 0;">
        <div class="col-3" style="height: 80px;margin: 0;padding: 0;">
            <img src="logo_web6.jpg" alt=""
                 style="height: 60px; width: 60px; margin: 10px;display: inline;border-radius: 5px;border: black solid 1px;padding: 0;">
            <p style="line-height: 80px;text-align: left;width: 70%;display: inline;font-size: 20px;color: white"><b>FURAMA
                CONTROLLER</b></p>
        </div>
        <div class="col-7"></div>
        <div class="col-2">
            <a href=""><p
                    style="line-height: 80px;text-align: left;width: 70%;display: inline;font-size: 20px;color: white">
                Đăng nhập/Đăng xuất</p></a>
        </div>
    </div>
</div>

<%-- THANH MENU --%>

<nav class="navbar navbar-expand-lg navbar-light bg-light" ; style="background-color: #046056">
    <a class="navbar-brand" href="index.jsp">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown1" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Employee
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="employee?action=showFormAddNewEmployee">Add new Employee</a>
                    <a class="dropdown-item" href="employee?action=showListEmployee">Show list Employee</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown2" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Customer
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a class="dropdown-item" href="customer?action=showFormAddNewCustomer">Add new customer</a>
                    <a class="dropdown-item" href="customer?action=showListCustomer">Show list Customer</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown3" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Service
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown4" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Contract
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<%-- FORM ADD NEW --%>

<div class="custom_background" style="margin: 0;padding: 0;width: 100%">
    <div class="row" style="width: 100%">
        <div class="col-2"></div>
        <div class="col-8">
            <form action="/customer?action=addNewCustomer" method="Post" style="border: black solid 1px; background-color: #ffffff;opacity: 90%;padding: 20px;margin-top: 50px;border-radius: 10px;margin-bottom: 50px">
                <p style="text-align: center;font-size: 25px"><b>Add New Customer</b></p>
                <div class="mb-2">
                    <label  class="form-label">Customer ID</label>
                    <input type="text" class="form-control" name="customer_id">
                    <p style="color: red"><b>${error.get("customer_id")}</b></p>
                </div>

                <div class="mb-2">
                    <label  class="form-label">Customer Type ID</label>
                    <select name="customer_type_id" class="w-100 form-control">
                        <option value="" class="w-100">Customer Type</option>
                        <c:forEach items="${customerListType}" var="customerType">
                            <option value="${customerType.id}">${customerType.name}</option>
                        </c:forEach>
                    </select>
<%--                    <input type="text" class="form-control" name="customer_type_id">--%>
                </div>
                <div class="mb-2">
                    <label  class="form-label">Customer Name</label>
                    <input type="text" class="form-control" name="customer_name">
                </div>
                <div class="mb-2">
                    <label  class="form-label">Customer Birthday</label>
                    <input type="date" class="form-control" name="customer_birthday">
                </div>
                <div class="mb-2">
                    <label class="form-label">Customer Gender</label>
                    <select name="customer_gender" class="w-100 form-control">
                        <option value="1" class="w-100">Nam</option>
                        <option value="0" class="w-100">Nữ</option>
                    </select>
                </div>
                <div class="mb-2">
                    <label  class="form-label">Customer ID Card</label>
                    <input type="text" class="form-control" name="customer_id_card">
                    <p style="color: red"><b>${error.get("customer_id_card")}</b></p>
                </div>
                <div class="mb-2">
                    <label  class="form-label">Customer Phone</label>
                    <input type="text" class="form-control" name="customer_phone">
                    <p style="color: red"><b>${error.get("customer_phone")}</b></p>

                </div>
                <div class="mb-2">
                    <label  class="form-label">Customer Email</label>
                    <input type="text" class="form-control" name="customer_email">
                    <p style="color: red"><b>${error.get("customer_email")}</b></p>

                </div>
                <div class="mb-2">
                    <label  class="form-label">Customer Address</label>
                    <input type="text" class="form-control" name="customer_address">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
            </form>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="\bootstrap\js\bootstrap.min.js"></script>
</html>
