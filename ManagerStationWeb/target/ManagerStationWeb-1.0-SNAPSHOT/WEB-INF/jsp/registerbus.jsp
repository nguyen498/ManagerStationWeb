<%-- 
    Document   : registerbus
    Created on : Aug 3, 2022, 10:38:18 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/register-bus" var="action" />

<section id="hero">
    <div class="hero-container">
        <h1>Trang đăng kí xe</h1>  
    </div>
</section>
<main id="main">
    <h1 class="text-center text-info">Đăng kí xe</h1>
    <div class="container mb-3" style="min-height: 500px">
        <form:form method="post" action="${action}" modelAttribute="bus">
            <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
            <div class="mb-3 mt-5">
                <label for="name" class="form-label">Biển số xe: </label>
                <form:input class="form-control" style="max-width: 300px" placeholder="Nhập biển số xe" path="biensoxe" id="biensoxe"/>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Nhà xe: </label>
                <form:select path="manhaxe" class="form-select" id="mabenxe" name="mabenxe" style="max-width: 500px">
                    <c:forEach items="${station}" var="b">
                        <option value="${b.id}">${b.tennhaxe} (${b.diachi})</option>
                    </c:forEach>
                </form:select>
            </div>
            <button type="submit" class="btn btn-primary">Xác nhận</button>
        </form:form>
    </div>
</main>
