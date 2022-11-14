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
        <div class="row">
            <h2 class="text-center">Thống kê doanh thu theo chuyến</h2>
            <table class="table align-items-center mb-0">
                <thead>
                    <tr>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Biển số xe</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tuyến</th>
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
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${s[1]}</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${s[2].tuyenBD} => ${s[2].tuyenKT}</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${s[3]}</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${s[4]}</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${s[5]}</span>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <h2 class="text-center">Danh sách xe</h2>
            <table class="table align-items-center mb-0">
                <thead>
                    <tr>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Biển số xe</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên nhà xe</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${bus}" var="b">
                        <tr>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${b.biensoxe}</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-bold">${b.manhaxe.tennhaxe}</span>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</main>