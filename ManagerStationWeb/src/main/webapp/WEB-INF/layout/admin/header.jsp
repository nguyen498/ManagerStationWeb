<%-- 
    Document   : header
    Created on : Jul 24, 2022, 1:10:04 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
           prefix="fn" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">

    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
        <div class="navbar-brand m-0">
            <img src="<c:url value="/img/logo-ct.png" />" class="navbar-brand-img h-100" alt="main_logo">
            <span class="ms-1 font-weight-bold text-white">BenXeOnline</span>
        </div>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item">
                    <a class="nav-link text-white
                    " href="../">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">home</i>
                    </div>
                    <span class="nav-link-text ms-1">Home</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white
                   <c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/admin/'}">active bg-gradient-primary</c:if>"
                       " href="../admin/">
                       <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                           <i class="material-icons opacity-10">dashboard</i>
                       </div>
                       <span class="nav-link-text ms-1">Dashboard</span>
                   </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white
                    <c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/admin/list'}">active bg-gradient-primary</c:if>"
                    href="<c:url value="/admin/list"/>">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">table_view</i>
                    </div>
                    <span class="nav-link-text ms-1">Tables</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white
                   <c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/admin/add'}">active bg-gradient-primary</c:if>"
                       " href="../admin/add">
                       <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                           <i class="material-icons opacity-10">add</i>
                       </div>
                       <span class="nav-link-text ms-1">Add</span>
                   </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white
                    <c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/admin/stats'}">active bg-gradient-primary</c:if>"
                    " href="../admin/stats">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">bar_chart</i>
                    </div>
                    <span class="nav-link-text ms-1">Stats</span>
                </a>
            </li>
        </ul>
    </div>
</aside>
