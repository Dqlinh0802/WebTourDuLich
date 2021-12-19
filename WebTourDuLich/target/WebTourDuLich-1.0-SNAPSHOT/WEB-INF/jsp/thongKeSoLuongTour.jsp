<%-- 
    Document   : thongKeSoLuongTour
    Created on : Dec 19, 2021, 5:41:13 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="text-center mt-3 text-success" data-aos="fade-down" data-aos-duration="1500">
    Thống kê số lượng tour
</h1>
<div>
    <canvas id="myChartSoLuong"></canvas>
</div>
<table class="table">
    <tr class="text-white h5 bg-tb">
        <th class="text-center">Mã tour</th>
        <th class="text-center">Tên tour</th>
        <th class="text-center">Số lượng còn</th>
        <th class="text-center">Giá</th>
    </tr>
    <c:forEach var="tour" items="${thongKeSoLuongTour}">
        <tr>
            <td class="text-center">${tour.tourId}</td>
            <td class="text-center">${tour.tenTour}</td>
            <td class="text-center">${tour.soCho}</td>
            <td class="giaTien text-center">${tour.gia}</td>
        </tr>
    </c:forEach>
</table>
<!--tra ve pro[0] vi ben kia tra ve kieu Object-->

<script>
    let tourLaels = [], tourInfo = [];
    <c:forEach var="tour" items="${thongKeSoLuongTour}">
    tourLaels.push('${tour.tenTour}')
    tourInfo.push(${tour.soCho})
    </c:forEach>

    window.onload = function () {
        bieuDoSoLuongTour("myChartSoLuong", tourLaels, tourInfo)
        let gia = document.getElementsByClassName("giaTien")

        //dau phay trong tien
        var formatter = new Intl.NumberFormat('vi', {
            style: 'currency',
            currency: 'VND',
        });
        for (let i = 0; i < gia.length; i++)
        {

            gia[i].innerText = formatter.format(gia[i].innerText);
        }
    }

    AOS.init();
</script>