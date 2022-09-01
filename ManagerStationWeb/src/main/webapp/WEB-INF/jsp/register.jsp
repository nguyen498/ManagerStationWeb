<%-- 
    Document   : register
    Created on : Aug 24, 2022, 8:13:40 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/register" var="action"/>

<section id="hero">
    <div class="hero-container">
        <h1>Trang đăng ký</h1>  
    </div>
</section>
<main id="main" class="container mb-4 mt-3" style="max-width: 500px">
    <c:if test="${msg != null}">
        <div class="alert alert-danger">
            ${msg}
        </div>
    </c:if>
    <div style="min-width: 100px; background-color: #fff7f2">
        <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="tab-register" data-mdb-toggle="pill" href="#pills-register" role="tab"
                   aria-controls="pills-register" aria-selected="false">Register</a>
            </li>
        </ul>
    </div>
    <div class="tab-content">
            <form:form method="post" action="${action}" modelAttribute="user">
                <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
                <!-- Name input -->
                <div class="form-outline mb-4" >
                    <label class="form-label" for="firstname">First Name:</label>
                    <form:input path="firstname" type="text" id="firstname" class="form-control" style="border:1px solid" />
                </div>
                <div class="form-outline mb-4">
                    <label class="form-label" for="lastname">Last Name</label>
                    <form:input path="lastname" type="text" id="lastname" class="form-control" style="border:1px solid"/>
                </div>

                <!-- Username input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="username">Username</label>
                    <form:input path="username" type="text" id="username" class="form-control" style="border:1px solid"/>
                </div>

                <!-- Email input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="email">Email</label>
                    <form:input path="email" type="email" id="email" class="form-control" style="border:1px solid"/>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="password">Password</label>
                    <form:input path="password" type="password" id="password" class="form-control" style="border:1px solid"/>
                </div>

                <!-- Repeat Password input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="confirm-password">Repeat password</label>
                    <form:input path="confirmPassword" type="password" id="confirm-password" class="form-control" style="border:1px solid"/>
                </div>

                <!-- Checkbox -->
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-3">Sign in</button>
            </form:form>
    </div>
</main>
