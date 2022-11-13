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
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Username</th>
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
                                        <td class="align-middle text-center">
                                            <span class="text-secondary text-xs font-weight-bold">${s.userId.username}</span>
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

    <div class="row">
        <div class="col-12">
            <div class="card my-4">
                <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                    <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">Bustrip table</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0" style="max-height: 300px">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Ảnh </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Ngày khởi hành </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Thời gian khởi hành </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Giá vé </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tuyến </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Bus</th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${bustrip}" var="bt">
                                    <tr>
                                        <td>
                                            <div class="d-flex px-2 py-1">
                                                ${bt.id}
                                            </div>
                                        </td>
                                        <td >
                                            <img src="<c:url value="${bt.image}" />" class="avatar avatar-xl me-3 border-radius-lg" alt="user1">
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${bt.ngaykhoihanh}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${bt.thoigian}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${bt.giave}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${bt.routeId.tuyenBD} => ${bt.routeId.tuyenKT}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${bt.bus.biensoxe}</span>
                                        </td>
                                        <td class="align-middle d-flex justify-content-center">
                                            <a href="<c:url value="/admin/delete-bustrip/${bt.id}"/>" class="btn btn-danger text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Delete user">
                                                DELETE
                                            </a>
                                            <a href="<c:url value="/admin/update/bustrip/${bt.id}"/>" class="btn btn-info text-white font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
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
                        <h6 class="text-white text-capitalize ps-3">Ticket table</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0" style="max-height: 300px">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Created date </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Giá </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Chuyến xe </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">User </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Ghế </th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${tickets}" var="t">
                                    <tr>
                                        <td>
                                            <div class="d-flex px-2 py-1">
                                                ${t.id}
                                            </div>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${t.createdDate}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${t.total}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${t.bustripId.routeId.tuyenBD} => ${t.bustripId.routeId.tuyenKT}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${t.userId.username}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${t.seatId.alias}</span>
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
                        <h6 class="text-white text-capitalize ps-3">Ship table</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0" style="max-height: 300px">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tên người nhận </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tên hàng </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Địa chỉ </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Email </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Điện thoại </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Người gửi </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Chuyến </th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${goods}" var="g">
                                    <tr>
                                        <td>
                                            <div class="d-flex px-2 py-1">
                                                ${g.id}
                                            </div>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.tennguoinhan}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.tenhang}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.diachinhanhang}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.email}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.phone}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.userId.firstname} ${g.userId.lastname}</span>
                                        </td>
                                        <td>
                                            <span class="text-secondary text-xs font-weight-bold">${g.bustripId.routeId.tuyenBD} => ${g.bustripId.routeId.tuyenKT}</span>
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


