<%-- 
    Document   : header
    Created on : Aug 2, 2022, 7:53:15 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item d-flex">
                        <img src="https://res.cloudinary.com/dgf4td2l4/image/upload/v1661332497/avatar_kwqbgk.jpg" class="rounded-circle ml-15" style="width: 50px;" alt="Avatar" />
                        <a class="nav-link mb-0" href="<c:url value="/login" />">
                            Chào, ${pageContext.session.getAttribute("currentUser").username}
                        </a>
                    </li>
                </sec:authorize>
                <li class="active"><a href="${url}" class="scrollto">Home</a></li>
                <sec:authorize access="hasRole('ROLE_USER')">
                <li><a href="${url}register-station">Đăng kí nhà xe</a></li>
                 <li><a href="${url}list-ticket">Xem vé xe</a></li>
                 </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_STATION')">
                    <li><a href="${url}register-bus">Đăng kí xe</a></li>
                    <li><a href="${url}register-route">Tạo tuyến</a></li>
                    <li><a href="${url}register-trip">Đăng kí chuyến xe</a></li>
                    <li><a href="${url}station-stats">Xem thống kê</a></li>
                    </sec:authorize>
                <li><a href="#Contact" class="scrollto">Liên hệ</a></li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/" />">Trang quản lí</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a href="<c:url value="/login" />">Đăng nhập</a>
                    </li>
                    <li class="nav-item">
                        <a href="<c:url value="/register" />">Đăng ký</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/logout" />">Đăng xuất</a>
                    </li>
                </sec:authorize>
            </ul>
        </nav><!-- .nav-menu -->

    </div>
</header>
