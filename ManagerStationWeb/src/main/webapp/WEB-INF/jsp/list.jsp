<%-- 
    Document   : index
    Created on : Aug 10, 2022, 6:23:33 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<div class="container-fluid py-4">

    <div class="row">
        <div class="col-12">
            <div class="card my-4">
                <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                    <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">Station table</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0" style="max-height: 300px">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tên nhà xe </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Địa chỉ</th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${station}" var="s">
                                    <tr>
                                        <td>
                                            <div class="d-flex px-2 py-1">
                                                ${s.id}
                                            </div>
                                        </td>
                                        <td >
                                            <span class="text-secondary text-xs font-weight-bold">${s.tennhaxe}</span>
                                        </td>
                                        <td class="align-middle text-center">
                                            <span class="text-secondary text-xs font-weight-bold">${s.diachi}</span>
                                        </td>
                                        <td class="align-middle d-flex justify-content-center">
                                            <a href="<c:url value="/admin/delete-station/${s.id}"/>" class="btn btn-danger text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                DELETE
                                            </a>
                                            <a href="<c:url value="/admin/update/station/${s.id}"/>" class="btn btn-info text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                UPDATE
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card my-4">
                <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                    <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">Bus table</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0" style="max-height: 300px">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Biển số xe</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Nhà xe</th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${bus}" var="b">
                                    <tr>
                                        <td>
                                            <div class="d-flex px-2 py-1">
                                                ${b.biensoxe}
                                            </div>
                                        </td>
                                        <td >
                                            <span class="text-secondary text-xs font-weight-bold">${b.manhaxe.tennhaxe}</span>
                                        </td>
                                        <td class="align-middle d-flex justify-content-center">
                                            <a href="<c:url value="/admin/delete-bus/${b.biensoxe}"/>" class="text-white btn btn-danger font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                DELETE
                                            </a>
                                            <a href="<c:url value="/admin/update/bus/${b.biensoxe}"/>" class="btn btn-info text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                UPDATE
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-12">
            <div class="card my-4">
                <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                    <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">Route table</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0" style="max-height: 300px">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tuyến bắt đầu </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tuyến kết thúc</th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${route}" var="r">
                                    <tr>
                                        <td>
                                            <div class="d-flex px-2 py-1">
                                                ${r.id}
                                            </div>
                                        </td>
                                        <td >
                                            <span class="text-secondary text-xs font-weight-bold">${r.tuyenBD}</span>
                                        </td>
                                        <td class="align-middle text-center">
                                            <span class="text-secondary text-xs font-weight-bold">${r.tuyenKT}</span>
                                        </td>
                                        <td class="align-middle d-flex justify-content-center">
                                            <a href="<c:url value="/admin/delete-route/${r.id}"/>" class="btn btn-danger text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Delete user">
                                                DELETE
                                            </a>
                                            <a href="<c:url value="/admin/update/route/${r.id}"/>" class="btn btn-info text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                UPDATE
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


