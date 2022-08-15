<%-- 
    Document   : header
    Created on : Aug 2, 2022, 7:53:15 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/" var="url" />

<header id="header">
    <div class="container-fluid">

        <div class="logo">
            <h1><i class="fa-solid fa-bus" style="color: white"></i><a href="${url}">BenXeOnline</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
        </div>

        <button type="button" class="nav-toggle"><i class="fa-solid fa-bars"></i></button>
        <nav class="nav-menu">
            <ul>
                <li class="active"><a href="${url}" class="scrollto">Home</a></li>
                <li><a href="${url}register-station">Đăng kí nhà xe</a></li>
                <li><a href="${url}register-bus">Đăng kí xe</a></li>
                <li><a href="${url}register-route">Tạo tuyến</a></li>
                <li><a href="${url}register-trip">Đăng kí chuyến xe</a></li>
                <li><a href="#">Mua vé</a></li>
                <li><a href="#">Gửi hàng</a></li>
                <li><a href="#Contact" class="scrollto">Liên hệ</a></li>
                <li><a href="#">Đăng nhập</a></li>
                <li><a href="#">Đăng kí tài khoản</a></li>
            </ul>
        </nav><!-- .nav-menu -->

    </div>
</header>
