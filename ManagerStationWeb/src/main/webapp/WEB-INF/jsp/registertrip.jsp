<%-- 
    Document   : registertrip
    Created on : Aug 4, 2022, 6:28:36 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<c:url value="/register-trip" var="action" />
<div style="position: fixed;
     top: 3rem;
     z-index: 10000;
     left: 50%;"
     class="spinner-border d-none" role="status">
</div>

<section id="hero">
    <div class="hero-container">
        <h1>Trang đăng kí chuyến xe</h1>  
    </div>
</section>
<main id="main">
    <h1 class="text-center text-info">Đăng kí chuyến xe</h1>
    <div class="container mb-3" style="min-height: 500px">
        <form:form method="post" action="${action}" modelAttribute="bustrip" enctype="multipart/form-data">
            <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
            <div class="mb-3 mt-5">
                <label for="file" class="form-label">Ảnh: </label>
                <form:input type="file" class="form-control" style="max-width: 300px" path="file" id="file" name="file"/>
                <div class="mb-3 mt-3">
                    <label for="content" class="form-label">Nội dung: </label>
                    <form:textarea class="form-control" style="max-width: 500px; min-height: 150px" placeholder="Nhập nội dung....." path="content" id="content"/>
                </div>
                <form:input style="width: 300px" path="ngaykhoihanh" type="date" name="ngaykhoihanh" class="form-control" id="ngaykhoihanh" min="" max="2030-12-31"/>
                <form:input style="width: 300px" path="thoigian" name="thoigian" class="form-control mt-3" type="time" id="time" min="00:00" max="23:59"/>
                <form:input style="width: 300px" path="giave" name="giave" class="form-control mt-3" type="number" id="giave"/>
                <form:select path="bus" class="form-select mt-3" id="bus" name="bus" style="max-width: 500px">
                    <c:forEach items="${bus}" var="b">
                        <option value="${b.biensoxe}">${b.biensoxe}</option>
                    </c:forEach>
                </form:select>
                <form:select path="routeId" class="form-select mt-3" id="routeId" name="routeId" style="max-width: 500px">
                    <c:forEach items="${route}" var="r">
                        <option value="${r.id}">${r.tuyenBD} => ${r.tuyenKT}</option>
                    </c:forEach>
                </form:select>
                <br>
                <button type="submit" class="btn btn-primary">Xác nhận</button>
            </form:form>
        </div>

        <script>
            var curDate = new Date();

            // Ngày hiện tại
            var curDay = curDate.getDate();

            // Tháng hiện tại
            var curMonth = curDate.getMonth() + 1;

            // Năm hiện tại
            var curYear = curDate.getFullYear();
            // Gán vào thẻ HTML
            if (curMonth < 10) {
                if (curDay < 10)
                    document.getElementById('ngaykhoihanh').min = curYear + "-0" + curMonth + "-0" + curDay;
                document.getElementById('ngaykhoihanh').min = curYear + "-0" + curMonth + "-" + curDay;
            } else
                document.getElementById('ngaykhoihanh').min = curYear + "-" + curMonth + "-" + curDay;
        </script>