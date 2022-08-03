<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<section id="hero">
    <div class="hero-container">
        <h1>Welcome BenXeOnline</h1>
        <h2>Hãy tìm kiếm nơi bạn muốn đến!!!</h2>

        <form action="forms/notify.php" method="post" role="form" class="php-email-form">
            <div class="row">
                <div class="col-md-3 form-group">
                    Điiẻm bắt đầu: <input type="text" name="name" class="form-control" id="name" placeholder="Điểm bắt đầu" required>
                </div>
                <div class="col-md-3 form-group">
                    Điểm kết thúc: <input type="text" name="email" class="form-control" id="email" name="email" id="email" placeholder="Điểm kết thúc" required>
                </div>
                <div class="col-md-3 form-group">
                    Nhà xe: <input type="text" name="" class="form-control" id="" placeholder="Nhà xe" required>
                </div>
                <div class="col-md-3 form-group1">
                    Ngày khởi hành:<input type="date" name="date" class="form-control" class="form-control" id="date" placeholder="dd/mm/yyyy" min="" max="2030-12-31" required>
                </div>
            </div>
            <div class="text-center"><button type="submit">Tìm kiếm</button></div>
        </form>
    </div>
</section><!-- #hero -->
<main id="main">
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us section-bg">
        <div class="container">

            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="card">
                        <img src="./resources/img/why-us-1.jpg" class="card-img-top" alt="...">
                        <div class="card-icon">
                            <i class="fa-solid fa-bus"></i>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Our Mission</a></h5>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="card">
                        <img src="./resources/img/why-us-2.jpg" class="card-img-top" alt="...">
                        <div class="card-icon">
                            <i class="fa-solid fa-bus"></i>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Our Plan</a></h5>
                            <p class="card-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="card">
                        <img src="./resources/img/why-us-3.jpg" class="card-img-top" alt="...">
                        <div class="card-icon">
                            <i class="fa-solid fa-bus"></i>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Our Vision</a></h5>
                            <p class="card-text">Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit, sed quia magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End Why Us Section --> 
    <!-- ======= Contact Us Section ======= -->

    <div id="current-time"></div>
    <script>
        var curDate = new Date();

        // Ngày hiện tại
        var curDay = curDate.getDate();

        // Tháng hiện tại
        var curMonth = curDate.getMonth() + 1;

        // Năm hiện tại
        var curYear = curDate.getFullYear();
        // Gán vào thẻ HTML
        if(curMonth < 10 || curDay < 10 ){
            document.getElementById('date').min = curYear + "-0" + curMonth + "-0" + curDay;
        }
        else
            document.getElementById('date').min = curYear + "-" + curMonth + "-" + curDay;
    </script>
</main><!-- End #main -->
