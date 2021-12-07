<%-- 
    Document   : header
    Created on : Sep 7, 2021, 1:25:04 AM
    Author     : Acer
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<nav class="navbar navbar-expand-sm bg-light d-flex justify-content-between">

    <!-- Links -->
    <ul class="navbar-nav">
        <a class="navbar-brand" href="#">
            <i class="fab fa-facebook" style="font-size: 50px"></i>
        </a>
        <li class="nav-item">
            <a class="nav-link" href="#">Trang chủ</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Khuyến mãi</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Liên hệ chúng tôi</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Đặt chỗ của tôi</a>
        </li>
    </ul>
    <form class="form-inline" action="/action_page.php">
        <input class="form-control mr-sm-2" type="text" placeholder="Search">
        <button class="btn btn-success" type="submit">Search</button>
    </form>

</nav>