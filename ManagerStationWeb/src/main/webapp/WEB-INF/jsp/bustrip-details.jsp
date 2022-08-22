<%-- 
    Document   : Bustrip-detail
    Created on : Aug 17, 2022, 3:02:58 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="hero">
    <div class="hero-container">
        <h1>Chi tiết chuyến xe</h1>  
    </div>
</section>
<main id="main">
    <div class="container mt-5 mb-5">
        <div class="row d-flex justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="images p-3">
                                <div class="text-center p-4"> <img id="main-image" src="${bustrip.image}" width="350" /> </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="product p-4">
                                <div class="mt-4 mb-3"> <span class="text-uppercase text-muted brand"><h4>${bustrip.routeId.tuyenBD} => ${bustrip.routeId.tuyenKT}</h4></span>
                                    <h5>Ngày khởi hành: ${bustrip.ngaykhoihanh}</h5>
                                    <h5>Thời gian hành: ${bustrip.thoigian}</h5>
                                    <h5>Biển số xe: ${bustrip.bus.biensoxe}</h5>
                                </div>
                                <p class="about">${bustrip.content}</p>
                                <div class="d-flex">
                                    <div class="cart mt-4 align-items-center"> 
                                        <button class="btn btn-danger text-uppercase mr-2 px-4">Mua vé</button>
                                    </div>
                                    <div class="ml-15 cart mt-4 align-items-center"> 
                                        <button class="btn btn-secondary text-uppercase mr-2 px-4">Gủi hàng</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
