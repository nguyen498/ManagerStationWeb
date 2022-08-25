<%-- 
    Document   : add
    Created on : Aug 10, 2022, 8:07:53 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div style="position: fixed;
     top: 3rem;
     z-index: 10000;
     left: 50%;"
     class="spinner-border d-none" role="status"></div>

<div class="toast-container position-fixed top-0 start-50 translate-middle-x p-3">
    <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <svg class="bd-placeholder-img rounded me-2" width="20" height="20" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect class="icon" width="100%" height="100%" fill="#007aff"></rect></svg>
            <strong class="me-auto">Notification</strong>
            <small>11 mins ago</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">
            Hello, world! This is a toast message.
        </div>
    </div>
</div>


<div class="container-fluid py-4">
    <div class="row">
        
        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Add Station</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" action="add-station" method="post" modelAttribute="station">
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
                            <button type="submit" class="btn btn-info ml-auto">Submit</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Add Bus</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" action="add-bus" method="post" modelAttribute="bus">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Biển số xe: </label>
                                        <form:input class="form-control" placeholder="Nhập biển số xe" path="biensoxe" id="biensoxe"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Nhà xe: </label>
                                        <form:select path="manhaxe" class="form-control" id="mabenxe" name="mabenxe">
                                            <c:forEach items="${listStation}" var="b">
                                                <option value="${b.id}">${b.tennhaxe} (${b.diachi})</option>
                                            </c:forEach>
                                        </form:select>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info ml-auto">Submit</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Add Routes</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form:form class="p-4" action="add-route" method="post" modelAttribute="route">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Tuyến bắt đầu: </label>
                                        <form:input class="form-control" placeholder="Nhập tuyến bắt đầu" path="tuyenBD" id="tennhaxe"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Tuyến kết thúc: </label>
                                        <form:input class="form-control" placeholder="Nhập tuyến kết thúc" path="tuyenKT" id="diachi"/>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info ml-auto">Submit</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Add BusTrip</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form class="p-4" action="bustrip" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label>Ngày khởi hành: </label>
                                        <input name="depart_time" type="time" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static my-3">
                                        <label>Thời gian: </label>
                                        <input name="depart_time" type="time" class="form-control">
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Select Route</label>
                                        <select name="route_id" class="form-control">
                                            <option value="1">Mỹ Tho -> Sài Gòn</option>
                                            <option value="1">Cujut -> Sài Gòn</option>
                                            <option value="1">Doremon -> Cà Mau</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1">Giá vé: </label>
                                        <input type="number" class="form-control" placeholder="Nhập giá vé...." id="giave"/>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info ml-auto">Submit</button>
                        </form>
                    </div

                </div>
            </div>
        </div


        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Add Ticket</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <form class="p-4" action="ticket" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1">Giá vé: </label>
                                        <input type="number" class="form-control" placeholder="Nhập giá vé...." id="giave"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label>Depart Date</label>
                                        <input name="depart_date" type="date" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Select Route</label>
                                        <select name="route_id" class="form-control">
                                            <option value="1">Mỹ Tho -> Sài Gòn</option>
                                            <option value="1">Cujut -> Sài Gòn</option>
                                            <option value="1">Doremon -> Cà Mau</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group input-group-static mb-4">
                                        <label for="exampleFormControlSelect1" class="ms-0">Select Bustrip</label>
                                        <select name="bustrip_id" class="form-control" id="exampleFormControlSelect1">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info ml-auto">Submit</button>
                        </form>
                    </div

                </div>
            </div>
        </div>



    </div>


