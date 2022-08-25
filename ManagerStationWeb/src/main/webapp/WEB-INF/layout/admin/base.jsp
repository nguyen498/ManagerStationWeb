<%-- 
    Document   : base
    Created on : Jul 24, 2022, 1:05:52 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
        <link rel="apple-touch-icon" sizes="76x76" href="/img/apple-icon.png">
        <link rel="icon" type="image/png" href="/img/favicon.png">

        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
        <!-- Nucleo Icons -->
        <link href="<c:url value="/css/nucleo-icons.css" />" rel="stylesheet" />
        <link href="<c:url value="/css/nucleo-svg.css" />" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
        <!-- CSS Files -->
        <link id="pagestyle" href="<c:url value="/css/material-dashboard.css?v=3.0.4" />" rel="stylesheet" />
        <!-- Include Choices CSS -->
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/choices.min.css"
            />

    </head>
    <body class="g-sidenav-show bg-gray-200">

        <tiles:insertAttribute name="header" />
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <h6 class="font-weight-bolder mb-0">Admin Page</h6>
                    </nav>
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                            
                        <ul class="navbar-nav  justify-content-end">
                            <sec:authorize access="isAuthenticated()">
                                <li class="nav-item d-flex align-items-center mb-0 ">
                                    <img src="https://res.cloudinary.com/dgf4td2l4/image/upload/v1661332497/avatar_kwqbgk.jpg" class="rounded-circle ml-15" style="width: 50px;" alt="Avatar" />
                                    ${pageContext.session.getAttribute("currentUser").username}
                                    <span class="d-sm-inline d-none">Chào, <sec:authentication property="principal.username" /></span>
                                </li>
                                <li class="d-flex align-items-center p-lg-1">  |  </li>
                                <li class="d-flex align-items-center">
                                    <a class="text-body " href="<c:url value="/logout" />">
                                        <span class="d-sm-inline d-none">Đăng xuất</span>
                                    </a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                            <li class="nav-item d-flex align-items-center">
                                <a href="<c:url value="/login"/>" class="nav-link text-body font-weight-bold px-0">
                                    <i class="fa fa-user me-sm-1"></i>
                                    <span class="d-sm-inline d-none">Sign In</span>
                                </a>
                            </li>
                            </sec:authorize>
                        </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <tiles:insertAttribute name="content" />

        </main>
        <tiles:insertAttribute name="footer" />





    </div>
    <!--   Core JS Files   -->
    <script src="<c:url value="/js/core/popper.min.js" />"></script>
    <script src="<c:url value="/js/core/bootstrap.min.js" />"></script>
    <script src="<c:url value="/js/plugins/perfect-scrollbar.min.js" />"></script>
    <script src="<c:url value="/js/plugins/smooth-scrollbar.min.js" />"></script>
    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>
    <!-- Include Choices JavaScript (latest) -->
    <script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>
    <!-- Github buttons -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="<c:url value="/js/material-dashboard.min.js?v=3.0.4" />"></script>

    <!--Custom Scripts-->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="<c:url value="/js/apiServices.js" />"></script>



</body>
</html>
