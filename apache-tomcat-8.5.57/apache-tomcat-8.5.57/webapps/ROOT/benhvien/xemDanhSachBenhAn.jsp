<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 6/10/2022
  Time: 9:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css"/>
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

<%-- SHOW SEARCH FORM --%>

<%--<form action="/customer" method="get" style="padding-left: 10px">
    <input hidden type="text" name="action" value="search">
    <input type="text" name="customerName" placeholder="nhập tên">
    <select name="customerType">
        <option value="">Choose Customer Type</option>
        <c:forEach var="customerType" items="${customerListType}">
            <option value="${customerType.id}">${customerType.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Search</button>
</form>--%>

<%-- SHOW CUSTOMER LIST --%>

<div class="row" style="margin: 0;padding: 0;">
    <p style="font-size: 30px;text-align: center;background-color: #046056;color: white;width: 100%;padding: 0;margin: 0;">
        <b>DANH SACH BENH AN</b></p>
</div>

<table id="tableCustomer" class="table table-striped table-bordered" style="width: 100%">
    <thead class="thead-dark">
    <tr>
        <th class="header"><p style="text-align: center">STT</p></th>
        <th class="header"><p style="text-align: center">MA BENH AN</p></th>
        <th class="header"><p style="text-align: center">MA BENH NHAN</p></th>
        <th class="header"><p style="text-align: center">TEN BENH NHAN</p></th>
        <th class="header"><p style="text-align: center">NGAY NHAP VIEN</p></th>
        <th class="header"><p style="text-align: center">NGAY RA VIEN</p></th>
        <th class="header"><p style="text-align: center">LY DO NHAP VIEN</p></th>
        <th class="header"><p style="text-align: center">SUA</p></th>
        <th class="header"><p style="text-align: center">XOA</p></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="benhAn" items="${danhSachBenhAn}" varStatus="status">
        <tr>
            <td>${benhAn.idHoSoBenhAn}</td>
            <c:forEach var="mabenhan" items="${danhSachMaBenhAn}">
                <c:if test="${benhAn.id_benh_an == mabenhan.id_benh_an}">
                    <td>${mabenhan.maBenhAn}</td>
                </c:if>
            </c:forEach>
            <c:forEach var="mabenhnhan" items="${danhSachMaBenhNhan}">
                <c:if test="${benhAn.id_benh_nhan == mabenhnhan.id_benh_nhan}">
                    <td>${mabenhnhan.maBenhNhan}</td>
                </c:if>
            </c:forEach>
            <td>${benhAn.tenBenhNhan}</td>
            <td>${benhAn.ngayNhapVien}</td>
            <td>${benhAn.ngayRaVien}</td>
            <td>${benhAn.lyDoNhapVien}</td>

            <td>
                <a class="text-white" href="hosobenhan?action=suaBenhAn&id=${benhAn.idHoSoBenhAn}">
                    <button style="background-color: #046056" type="button" class="btn btn-primary" data-toggle="modal">
                        Edit
                    </button>
                </a>
            <td>
                <button style="background-color: red" type="button" class="btn btn-primary" data-toggle="modal"
                        data-target="#${customer.customer_id}">
                    Delete
                </button>
                <div class="modal fade" id="${customer.customer_id}" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Danger</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure to delete ${customer.customer_name} ?</p>
                            </div>
                            <div class="modal-footer">
                                <a class="text-white"
                                   href="/customer?action=deleteCustomer&id=${customer.customer_id}">
                                    <button style="background-color: red" type="button" class="btn btn-primary">Yes
                                    </button>
                                </a>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="\bootstrap\js\bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>

</html>
