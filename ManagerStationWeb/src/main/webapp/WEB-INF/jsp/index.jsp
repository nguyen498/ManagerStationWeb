<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<section id="hero">
    <div class="hero-container">
        <h1>Welcome BenXeOnline</h1>
        <h2>Hãy tìm kiếm nơi bạn muốn đến!!!</h2>

        <c:url value="/" var="action"/>
        <form action="${action}" class="php-email-form">
            <div class="row">
                <div class="col-md-4 form-group">
                    Điểm bắt đầu: <input type="text" name="destination" class="form-control" id="destination" placeholder="Điểm bắt đầu">
                </div>
                <div class="col-md-4 form-group">
                    Điểm kết thúc: <input type="text" name="end" class="form-control" id="end" placeholder="Điểm kết thúc">
                </div>
                <div class="col-md-4 form-group1">
                    Ngày khởi hành:<input type="date" name="date" class="form-control" class="form-control" id="date" placeholder="dd/mm/yyyy" min="" max="2030-12-31">
                </div>
            </div>
            <div class="text-center"><button type="submit">Tìm kiếm</button></div>
        </form>
    </div>
</section><!-- #hero -->
<main id="main">
    <c:if test="${bustrips.size() == 0}">
        <div class="section-bg"">
            <p class="mb-0"><em>KHONG CO CHUEN XE NAO!!!</em></p>
        </div>
    </c:if>
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us section-bg">
        <div class="container">

            <div class="row">
                <c:forEach items="${bustrips}" var="p">

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <a href="<c:url value="/bustrip/${p.id}"/>">
                            <div class="card w-100">
                                <img src="${p.image}" class="card-img-top" alt="...">
                                <div class="card-icon">
                                    <i class="fa-solid fa-bus"></i>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title"><a href="<c:url value="/bustrip/${p.id}"/>">${p.routeId.tuyenBD} => ${p.routeId.tuyenKT}</a></h5>
                                    <p class="card-text">${p.content}</p>
                                    <p class="card-text">Ngày khởi hành: ${p.ngaykhoihanh}</p>
                                    <p class="card-text">Nhà xe: ${p.bus.manhaxe.tennhaxe}</p>
                                </div>
                                <div class="d-flex" style="margin: auto; margin-bottom: 10px">
                                    <div class="cart mt-4 align-items-center"> 
                                        <a href="<c:url value="/bustrip/${p.id}/buy-ticket"/>"><button class="btn btn-danger text-uppercase mr-2 px-4">Mua vé</button></a>
                                    </div>
                                    <div class="ml-15 cart mt-4 align-items-center"> 
                                        <a href="<c:url value="/bustrip/${p.id}/ship-goods"/>"><button class="btn btn-secondary text-uppercase mr-2 px-4">Gủi hàng</button></a>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
                <nav aria-label="Page navigation example" class="justify-content-center d-flex">
                    <ul class="pagination">
                        <c:forEach begin="1" end="${Math.ceil(counter/6)}" var="i">
                            <li class="page-item"><a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a>
                            </li>
                        </c:forEach>

                    </ul>
                </nav>
            </div>

        </div>
    </section><!-- End Why Us Section --> 
    <!-- ======= Contact Us Section ======= -->

    <div id="current-time"></div>
</main>
<script>
    var curDate = new Date();

    // Ngày hiện tại
    var curDay = curDate.getDate();

    // Tháng hiện tại
    var curMonth = curDate.getMonth() + 1;

    // Năm hiện tại
    var curYear = curDate.getFullYear();
    // Gán vào thẻ HTML
    if (curMonth < 10) {
        if (curDay < 10)
            document.getElementById('date').min = curYear + "-0" + curMonth + "-0" + curDay;
        document.getElementById('date').min = curYear + "-0" + curMonth + "-" + curDay;
    } else
        document.getElementById('date').min = curYear + "-" + curMonth + "-" + curDay;
</script>
</main><!-- End #main -->
