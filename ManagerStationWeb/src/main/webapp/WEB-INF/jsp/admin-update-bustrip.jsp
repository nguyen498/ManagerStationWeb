<%-- 
    Document   : admin-update-bustrip
    Created on : Aug 27, 2022, 12:28:08 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container-fluid py-4">
    <div class="row">
        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Update BusTrip</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" method="put" modelAttribute="bustrip" enctype="multipart/form-data">
                            <form:hidden path="id"/>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label>Ảnh: </label>
                                        <form:input path="file" name="file" type="file" class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label for="giave">Giá vé: </label>
                                        <form:input path="giave" type="number" class="form-control" placeholder="Nhập giá vé...." id="giave"/>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label>Ngày khởi hành: </label>
                                        <form:input path="ngaykhoihanh" name="depart_time" type="date" class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label>Thời gian: </label>
                                        <form:input path="thoigian" name="depart_time" type="time" class="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="bus" class="ms-0">Select Bus</label>
                                        <form:select path="bus" name="bus" class="form-control">
                                            <c:forEach items="${listBus}" var="b">
                                                <option value="${b.biensoxe}">${b.biensoxe}</option>
                                            </c:forEach>
                                        </form:select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="route" class="ms-0">Select Route</label>
                                        <form:select path="routeId" name="route" class="form-control">
                                            <c:forEach items="${listRoute}" var="r">
                                                <option value="${r.id}">${r.tuyenBD} => ${r.tuyenKT}</option>
                                            </c:forEach>
                                        </form:select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label>Nội dung: </label>
                                        <form:textarea path="content" name="content" type="text" class="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-info ml-auto">Submit</button>
                        </form:form>
                    </div
                </div>
            </div>
        </div>
    </div>
</div>  