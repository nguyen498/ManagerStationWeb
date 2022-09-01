<%-- 
    Document   : signin
    Created on : Aug 3, 2022, 10:39:53 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/login" var="action"/>

<section id="hero">
    <div class="hero-container">
        <h1>Trang đăng nhập</h1>  
    </div>
</section>
<main id="main" class="container mb-4 mt-3" style="max-width: 500px">
    <!-- Pills navs -->
    <c:if test="${param.error != null}">
        <div class="alert alert-danger">
            Username không đúng hoặc sai mật khẩu!!!
        </div>
    </c:if>
    <c:if test="${msg != null}">
        <div class="alert alert-danger">
            ${msg}
        </div>
    </c:if>
    <div style="min-width: 100px; background-color: #fff7f2">
        <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
            <li class="nav-item active" role="presentation">
                <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="#pills-login" role="tab"
                   aria-controls="pills-login" aria-selected="true">Login</a>
            </li>
        </ul>
        <!-- Pills navs -->

        <!-- Pills content -->
        <div class="tab-content">
            <div class="tab-pane fade show active">
                <form method="post" action="${action}">
                    <!-- Email input -->
                    <div class=" mb-4">
                        <label class="form-label" for="username"> Username:</label>
                        <input type="text" id="username" class="form-control" name="username" placeholder="Username"/>
                    </div>

                    <!-- Password input -->
                    <div class="mb-4">
                        <label class="form-label" for="password">Password</label>
                        <input type="password" id="password" class="form-control" name="password"  placeholder="Password"/>
                    </div>
                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>

                </form>
            </div>
        </div>
    </div>
    <!-- Pills content -->
</main>