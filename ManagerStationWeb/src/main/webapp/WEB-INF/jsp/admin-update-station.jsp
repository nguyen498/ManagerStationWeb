<%-- 
    Document   : admin-update-station
    Created on : Aug 26, 2022, 1:35:20 PM
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
                            <h6 class="text-white text-capitalize ps-3">Update Station</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" method="put" modelAttribute="station">
                            <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
                            <form:hidden path="id" name="id"/>
                            <form:hidden path="userId" name="userId"/>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Tên nhà xe: </label>
                                        <form:input class="form-control" placeholder="Nhập tên nhà xe" path="tennhaxe" id="tennhaxe"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Địa chỉ: </label>
                                        <form:input class="form-control" placeholder="Nhập địa chỉ...." path="diachi" id="diachi"/>
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