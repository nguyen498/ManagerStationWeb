<%-- 
    Document   : registerstation
    Created on : Aug 3, 2022, 10:38:57 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/register-station" var="action" />

<section id="hero">
    <div class="hero-container">
        <h1>Trang đăng kí nhà xe</h1>  
    </div>
</section>
<main id="main">
    <div class="container mb-3" style="min-height: 500px">
        <form:form method="post" action="${action}" modelAttribute="station">
            <div class="mb-3 mt-5">
                <label for="name" class="form-label">Tên nhà xe: </label>
                <form:input class="form-control" style="max-width: 300px" placeholder="Nhập tên nhà xe" path="tennhaxe" id="tennhaxe"/>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Địa chỉ: </label>
                <form:input class="form-control" style="max-width: 500px" placeholder="Nhập địa chỉ" path="diachi" id="diachi"/>
            </div>
            <button type="submit" class="btn btn-primary">Xác nhận</button>
        </form:form>
    </div>
</main>