<%-- 
    Document   : footer
    Created on : Aug 2, 2022, 7:53:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="contact" class="contact section-bg">
    <div class="container">
        <hr size="5px">
        <div class="section-title">
            <h2>Liên Hệ</h2>
        </div>

        <div class="row justify-content-center">

            <div class="col-lg-3 col-md-5 mb-5 mb-md-0">
                <div class="info">
                    <div class="address">
                        <i class="bx bx-map"></i>
                        <p>371 Nguyễn Kiệm, Phường 3<br>Gò Vấp, TPHCM</p>
                    </div>

                    <div class="email">
                        <i class="bx bx-envelope"></i>
                        <p>benxeonline@gamil.com</p>
                    </div>

                    <div class="phone">
                        <i class="bx bx-phone-call"></i>
                        <p>+84 383 435 099</p>
                    </div>

                </div>

                <div class="social-links">
                    <a href="#" class="twitter"><i class="fa-brands fa-twitter"></i></a>
                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="instagram"><i class="fa-brands fa-instagram"></i></i></a>
                    <a href="#" class="linkedin"><i class="fab fa-linkedin"></i></a>
                </div>

            </div>

            <div class="col-lg-5 col-md-7">
                <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" id="name" placeholder="Tên" required>
                    </div>
                    <div class="form-group mt-3">
                        <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
                    </div>
                    <div class="form-group mt-3">
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Tiêu đề" required>
                    </div>
                    <div class="form-group mt-3">
                        <textarea class="form-control" name="message" rows="5" placeholder="Nội dung" required></textarea>
                    </div>
                    <div class="my-3">
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="text-center"><button type="submit">Gửi</button></div>
                </form>
            </div>

        </div>

    </div>
</section><!-- End Contact Us Section -->
<footer id="footer">
    <!-- ======= Footer ======= -->
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>BenXeOnline</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-bootstrap-landing-page/ -->
            Designed by <a href="https://www.facebook.com/nguyen.20501/">Nguyên</a>
        </div>
    </div>
</footer><!-- End #footer -->
