<%-- 
    Document   : BuyTicket
    Created on : Aug 3, 2022, 10:34:03 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section id="hero">
    <div class="hero-container">
        <h1>Trang mua vé</h1>  
    </div>
</section>
<main id="id">
    <div class="container">
        <form action="<c:url value="/bustrip/${bustrip.id}/buy-ticket"/>" method="post"/>
        <div class="row">
            <div class="col">
                <input type="hidden" name="departDate" value="${departDate}">
                <input type="hidden" name="bustripId" value="${bustrip.id}">
                <div class="row p-4">
                    <c:forEach items="${seats}" var="seat" varStatus="loop">
                        <div class="col-4 d-flex mt-15" >
                            <input onchange="handleSeatChange(event)" class="btn-check checked" <c:if test="${seat.isBooked == true}">disabled</c:if> type="checkbox" name="seatIds" value="${seat.id}" id="btncheck-${bustrip.getId()}-${seat.id}" autocomplete="off">
                            <label class="btn btn-outline-primary" for="btncheck-${bustrip.getId()}-${seat.id}">Ghế ${seat.alias}</label>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col">
                <div class="card-body">
                    <!--hidden input-->
                    <input type="hidden" name="bustripId" value="${bustrip.id}"/>
                    <input id="price" type="hidden" name="bustripId" value="${bustrip.giave}"/>
                    <div class="form-outline mb-4 ">
                        Tổng tiền: <span id="total"> 0 </span>VND
                    </div>


                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary">Đặt vé</button>
                </div>
            </div>
        </div>
        </form>
    </div>
</main>
<script>
    let p = document.getElementById("price");
    let total = document.getElementById("total");
    let s = 0;
    
    function handleSeatChange(e) {
        let check = e.target.checked;
        if (check) {
            s += parseInt(p.value);
            total.innerHTML = s;
        }
        else {
            s -= parseInt(p.value);
            total.innerHTML = s;
        }
    }
</script>