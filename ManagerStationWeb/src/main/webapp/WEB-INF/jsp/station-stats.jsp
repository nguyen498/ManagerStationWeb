<%-- 
    Document   : station-stats
    Created on : Oct 29, 2022, 8:50:31 AM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<section id="hero">
    <div class="hero-container">
        <h1>Trang xem thống kê</h1>  
    </div>
</section>
<main id="main">
    <div class="container">
        <table class="table align-items-center mb-0">
            <thead>
                <tr>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên nhà xe</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tồng doanh thu</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tổng số vé</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${stats}" var="s">
                    <tr>
                        <td>
                            <div class="d-flex px-2 py-1">
                                ${s[0]}
                            </div>
                        </td>
                        <td >
                            <span class="text-secondary text-xs font-weight-bold">${s[1]}</span>
                        </td>
                        <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold">${s[2]}</span>
                        </td>
                        <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold">${s[3]}</span>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</main>