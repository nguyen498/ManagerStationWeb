<%-- 
    Document   : register-route
    Created on : Aug 15, 2022, 12:50:53 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section id="hero">
    <div class="hero-container">
        <h1>Trang tạo tuyến</h1>  
    </div>
</section>
<main id="main">
    <h1 class="text-center text-info">Đăng kí tuyến</h1>
    <div class="container mb-3" style="min-height: 500px">
        <form:form method="post" action="${action}" modelAttribute="route">
            <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
            <div class="mb-3 mt-5">
                <label for="name" class="form-label">Tuyến bắt đầu: </label>
                <form:input class="form-control" style="max-width: 500px" placeholder="Nhập tuyến bắt đầu" path="tuyenBD" id="tennhaxe"/>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Tuyến kết thúc: </label>
                <form:input class="form-control" style="max-width: 500px" placeholder="Nhập tuyến kết thúc" path="tuyenKT" id="diachi"/>
            </div>
            <button type="submit" class="btn btn-primary">Xác nhận</button>
        </form:form>
    </div>
</main>
