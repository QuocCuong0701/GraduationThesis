<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-billDetail"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chi tiết hóa đơn</title>
</head>
<body>
    <c:set var="cart" value="${sessionScope.model}" />
    <!-- Breadcurb AREA -->
    <div class="breadcurb-area">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Trang Chủ</a></li>
                <li>Thanh Toán</li>
                <li>Chi Tiết Hóa Đơn</li>
            </ul>
        </div>
    </div>

    <div class="Single-blog-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-8">
                    <div class="single-blog-post-area fix">
                        <div class="single-blog-post fix">
                            <div class="single-blog-content fix">
                                <div class="blog-heading-title fix">
                                    <h1>Đơn hàng nhận được.</h1>
                                </div>
                                <div class="blog-main-content fix">
                                    <p>Cảm ơn bạn. Đơn hàng của bạn đã được nhận.</p>
                                    <ul class="order_details">
                                        <li class="order">
                                            Số đơn hàng:<strong>${BillModel.bill_id}</strong>
                                        </li>
                                        <li class="date">
                                            Ngày:<strong>${BillModel.created_date}</strong>
                                        </li>
                                        <li class="total">
                                            Tổng cộng:<strong><span class="amount"><fmt:formatNumber pattern="###,###" value="${sessionScope.totalPrice}"/> đ</span></strong>
                                        </li>
                                        <li class="method" style="display: none">
                                            Phương thức thanh toán:<strong>Trả tiền mặt khi nhận hàng</strong>
                                        </li>
                                    </ul>
                                    <p style="text-align: justify; font-size: 13px;">Bộ phận bán hàng sẽ gọi lại cho quý khách trong thời gian sớm nhất để chốt đơn hàng hoặc nhận thông tin bổ sung.
                                        Quý khách có yêu cầu gì thêm vui lòng gọi holine 0333 385 398 để có hướng dẫn đầy đủ nhất.<br>
                                        Trân trọng cảm ơn quý khách!</p>
                                    <h3>Chi tiết đơn hàng</h3>
                                    <table class="table table-bordered tableOrderReceived">
                                        <thead>
                                        <tr>
                                            <th>Sản phẩm</th>
                                            <th>Tổng</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="rows" items="${cart}">
                                            <tr>
                                                <td><span style="color: red;font-style: italic;">${rows.value.productModel.product_name}</span><strong> × ${rows.value.quantity}</strong></td>
                                                <td><span><fmt:formatNumber pattern="###,###" value="${rows.value.quantity * rows.value.productModel.product_price}"/> đ</span></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Tạm Tính:</th>
                                            <td><span><fmt:formatNumber pattern="###,###" value="${sessionScope.totalPrice}"/> đ</span></td>
                                        </tr>
                                        <tr style="display: none">
                                            <th>Phương thức thanh toán:</th>
                                            <td>Trả tiền mặt khi nhận hàng</td>
                                        </tr>
                                        <tr>
                                            <th>Tổng Cộng:</th>
                                            <td><strong><fmt:formatNumber pattern="###,###" value="${sessionScope.totalPrice}"/> đ</strong></td>
                                        </tr>
                                        </tfoot>
                                    </table>
                                    <h3>Chi tiết khách hàng</h3>
                                    <table class="table table-bordered tableOrderReceived">
                                        <tbody>
                                        <tr>
                                            <th>Email:</th>
                                            <td>email</td>
                                        </tr>
                                        <tr>
                                            <th>Số điện thoại:</th>
                                            <td>${BillModel.phone}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <h3>Địa chỉ thanh toán</h3>
                                    <address>${BillModel.full_name}<br>${BillModel.address}</address>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-blog-pagination shop-pagination"></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
