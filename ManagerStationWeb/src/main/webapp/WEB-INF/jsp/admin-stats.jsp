<%-- 
    Document   : admin-stats
    Created on : Aug 28, 2022, 2:17:52 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid py-4">
    <div class="row">

        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Stats</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2 d-flex">
                        <div class="col-md-6 col-xs-12">
                            <table class="table">
                                <tr>
                                    <th>Id</th>
                                    <th>Tên nhà xe</th>
                                    <th>Sô chuyến</th>
                                </tr>
                                <c:forEach items="${stationStats}" var="s">
                                    <tr>
                                        <td>${s[0]}</td>
                                        <td>${s[1]}</td>
                                        <td>${s[2]}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                        <div class="col-md-6">
                            <canvas id="stationChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<script src="<c:url value="/js/StationStats.js" />"></script>
<script>
        let data = [];
        let labels = [];
    <c:forEach items="${stationStats}" var="s">
        data.push(${s[2]});
        labels.push('${s[1]}');
    </c:forEach>
        const ctx = document.getElementById('stationChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                        label: 'Thong ke doanh thu',
                        data: data,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
</script>