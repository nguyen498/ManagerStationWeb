<%-- 
    Document   : admin-update-bus
    Created on : Aug 27, 2022, 12:27:48 AM
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
                            <h6 class="text-white text-capitalize ps-3">Update Bus</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" method="put" modelAttribute="bus">
                            <form:errors path="*" element="div" cssClass="alert alert-danger mt-3"/>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="biensoxe" class="ms-0">Biển số xe: </label>
                                        <form:input class="form-control" placeholder="Nhập biển số xe..." path="biensoxe" id="biensoxe"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="manhaxe" class="ms-0">Nhà xe: </label>
                                        <form:select path="manhaxe" class="form-control" id="manhaxe" name="manhaxe">
                                            <c:forEach items="${listStation}" var="b">
                                                <option value="${b.id}">${b.tennhaxe} (${b.diachi})</option>
                                            </c:forEach>
                                        </form:select>
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