<%-- 
    Document   : admin-update-route
    Created on : Aug 27, 2022, 12:07:16 AM
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
                            <h6 class="text-white text-capitalize ps-3">Update Route</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" method="put" modelAttribute="route">
                            <form:hidden path="id" name="id"/>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="tuyenBD" class="ms-0">Tuyến bắt đầu: </label>
                                        <form:input class="form-control" placeholder="Nhập tuyến bắt đầu...." path="tuyenBD" id="tuyenBD"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="tuyenKT" class="ms-0">Tuyến kết thúc: </label>
                                        <form:input class="form-control" placeholder="Nhập tuyến kết thúc...." path="tuyenKT" id="tuyenKT"/>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info ml-auto">UPDATE</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>  
