<%-- 
    Document   : ship-goods
    Created on : Aug 3, 2022, 10:41:57 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<section id="hero">
    <div class="hero-container">
        <h1>Trang gửi hàng</h1>  
    </div>
</section>
<main id="main">
    <h1 class="text-center text-info">Gửi hàng</h1>
    <div class="container mb-3" style="min-height: 500px">
        <form:form method="post" modelAttribute="good">
            <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
            <div class="mb-3 mt-5">
                <label for="tennguoigui" class="form-label">Tên người gửi </label>
                <input value="${pageContext.session.getAttribute("currentUser").firstname}  ${pageContext.session.getAttribute("currentUser").lastname}" type="text" class="form-control" style="max-width: 500px" disabled/>
            </div>
            <div class="mb-3">
                <label for="tenhang" class="form-label">Tên hàng: </label>
                <form:input class="form-control" style="max-width: 500px" placeholder="Nhập tên hàng..." path="tenhang" id="tenhang"/>
            </div>
            <div class="mb-3">
                <label for="tennguoinhan" class="form-label">Tên người nhận: </label>
                <form:input class="form-control" style="max-width: 500px" placeholder="Nhập tên người nhận..." path="tennguoinhan" id="tennguoinhan"/>
            </div>
            <div class="mb-3">
                <label for="diachinhanhang" class="form-label">Địa chỉ: </label>
                <form:input class="form-control" style="max-width: 500px" placeholder="Nhập địa chỉ người nhận..." path="diachinhanhang" id="diachinhanhang"/>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email người nhận: </label>
                <form:input type="email" class="form-control" style="max-width: 500px" placeholder="Nhập email người nhận..." path="email" id="email"/>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Số điện thoại người nhận: </label>
                <form:input type="number" class="form-control" style="max-width: 500px" placeholder="Nhập số điện thoại người nhận..." path="phone" id="phone"/>
            </div>
            <button type="submit" class="btn btn-primary">Xác nhận</button>
        </form:form>
    </div>
</main>