<%-- 
    Document   : list-ticket
    Created on : Nov 11, 2022, 10:50:28 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="hero">
    <div class="hero-container">
        <h1>Trang vé xe</h1>  
    </div>
</section>
<main id="main">
    <div class="container">
        <table class="table align-items-center mb-0">
            <thead>
                <tr>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tuyến </th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Biển số xe xe</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nhà xe</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Giá</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Ngày mua</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${ticket}" var="t">
                    <tr>
                        <td>
                            <div class="d-flex px-2 py-1">
                                ${t.id}
                            </div>
                        </td>
                        <td >
                            <span class="text-secondary text-xs font-weight-bold">${t.bustripId.routeId.tuyenBD} => ${t.bustripId.routeId.tuyenKT}</span>
                        </td>
                        <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold">${t.bustripId.bus.biensoxe}</span>
                        </td>
                        <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold">${t.bustripId.bus.manhaxe.tennhaxe}</span>
                        </td>
                         <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold">${t.total}</span>
                        </td>
                        <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold">${t.createdDate}</span>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</main>