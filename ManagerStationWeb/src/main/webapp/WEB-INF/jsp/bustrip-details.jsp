<%-- 
    Document   : Bustrip-detail
    Created on : Aug 17, 2022, 3:02:58 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                                    <h5>Giá vé: ${bustrip.giave} VNĐ</h5>
                                </div>
                                <p class="about">${bustrip.content}</p>
                                <div class="d-flex">
                                    <div class="cart mt-4 align-items-center"> 
                                        <a href="<c:url value="/bustrip/${bustrip.id}/buy-ticket"/>"><button class="btn btn-danger text-uppercase mr-2 px-4">Mua vé</button></a>
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
        <sec:authorize access="isAuthenticated()">
            <div class="py-3 border-0" >
                <div class="d-flex w-100 mt-5">
                    <div class="mr-15">
                        <img src="https://res.cloudinary.com/dgf4td2l4/image/upload/v1661332497/avatar_kwqbgk.jpg" class="rounded-circle ml-15" style="width: 50px;" alt="Avatar" />
                    </div>
                    <div class="w-100">
                        <textarea class="form-control" id="commentId" rows="4"
                                  placeholder="Comment..."></textarea>
                    </div>
                </div>
                <div class="float-end mt-2 pt-1">
                    <button type="button" onclick="addComment(${bustrip.id})" class="btn btn-primary btn-sm">Post comment</button>
                </div>
            </div>
        </sec:authorize>
        <div id="commentArea">
            <c:forEach items="${comment}" var="c">
                <div>
                    <div class="d-flex mt-5">
                        <img src="https://res.cloudinary.com/dgf4td2l4/image/upload/v1661332497/avatar_kwqbgk.jpg" class="rounded-circle ml-15" style="width: 50px;" alt="Avatar" />
                    </div>
                    <div>
                        <h6 class="fw-bold mb-1">${c.userId.firstname} ${c.userId.lastname}</h6>
                        <div class="d-flex  mb-3">
                            <p class="mb-0 commentDate">
                                ${c.createdDate}
                            </p>
                        </div>
                        <p class="mb-0">
                            ${c.content}
                        </p>
                    </div>
                    <hr class="my-0"/>
                </div>
            </c:forEach>
        </div>

    </div>
</main>
<script>

    function addComment(bustripId) {

        fetch("/ManagerStationWeb/api/add-comment", {
            method: 'post',
            body: JSON.stringify({
                "content": document.getElementById("commentId").value,
                "bustripId": bustripId
            }),
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json"
            }
        }).then(function (res) {
            console.info(res);

            return res.json();
        }).then(function (data) {
            console.info(data);

            let area = document.getElementById("commentArea");
            area.innerHTML = `
            <div>
            <div class="d-flex mt-5">
                <div>
                    <img src="https://res.cloudinary.com/dgf4td2l4/image/upload/v1661332497/avatar_kwqbgk.jpg" class="rounded-circle ml-15" style="width: 50px;" alt="Avatar" />
                </div>
            </div>
            <div>
                <h6 class="fw-bold mb-1">${data.userId.firstname} ${data.userId.lastname}</h6>
                <div class="d-flex mb-3">
                    <p class="mb-0 my-date">
    ${data.createdDate}
                    </p>
                </div>
                <p class="mb-0">
    ${data.content}
                </p>
            </div>
                            <hr class="my-0"/>
                </div>
            ` + area.innerHTML;
        });
    }
</script>