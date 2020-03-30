<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-bill"/>
<c:url var="APIurl1" value="/api-admin-billDetail"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thanh toán</title>
</head>
<body>
    <!-- Breadcurb AREA -->
    <div class="breadcurb-area">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Trang chủ</a></li>
                <li><a href="#">Trang</a></li>
                <li>Thanh toán</li>
            </ul>
        </div>
    </div>
    <!-- Checkout AREA -->
    <div class="checkout-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-7">
                <div class="billing-address">
                    <div class="checkout-head">
                        <h2><i class="fa fa-map-marker"></i>   ĐỊA CHỈ VÀ THÔNG TIN NHẬN HÀNG</h2>
                        <p>Giao hàng tận tay. Ngay nơi bạn ở.</p>
                    </div>
                    <div class="checkout-form">
                        <form action="/checkout" method="post" id="formSubmit" class="form-horizontal">
                            <input id="user_id" type="hidden" class="form-control" value="${USERMODEL.user_id}" />
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Họ Và Tên <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input name="full_name" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Địa Chỉ Nhận Hàng <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input name="address" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Email <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input name="email" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Số Điện Thoại <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input name="phone" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Ghi Chú
                                </label>
                                <div class="col-md-9">
                                    <textarea name="note" rows="9"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-5">
                <c:set var="cart" value="${sessionScope.model}"/>
                <div class="review-order">
                    <div class="checkout-head">
                        <h2>Thông Tin Hóa Đơn</h2>
                    </div>
                    <c:forEach var="rows" items="${cart}">
                        <div class="single-review">
                            <div class="single-review-img">
                                <a href="#"><img style="width: 70px; height: 90px" src="<c:url value="${rows.value.productModel.product_image}"/>" alt="review"></a>
                            </div>
                            <div class="single-review-content fix">
                                <h2><a href="#">${rows.value.productModel.product_name}</a></h2>
                                <p><span>Số Lượng :</span> ${rows.value.quantity}</p>
                                <h3><fmt:formatNumber pattern="###,###" value="${rows.value.productModel.product_price}"/> đ</h3>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="subtotal-area">
                        <div class="subtotal-content fix">
                            <h2 class="floatleft">Tạm Tính</h2>
                            <h2 class="floatright"><fmt:formatNumber pattern="###,###" value="${sessionScope.totalPrice}"/> đ</h2>
                        </div>
                        <div class="subtotal-content fix">
                            <h2 class="floatleft">Tổng</h2>
                            <h2 class="floatright"><fmt:formatNumber pattern="###,###" value="${sessionScope.totalPrice}"/> đ</h2>
                        </div>
                    </div>
                    <div class="payment-method">
                        <%--<h2>PAYMENT METHOD</h2>
                        <div class="payment-checkbox">
                            <input type="checkbox" checked> Direct Bank Transfer
                        </div>
                        <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.</p>
                        <div class="payment-checkbox">
                            <input type="checkbox"> Chaque Payment <br>
                            <input type="checkbox"> Paypal
                        </div>
                        <button type="button" class="btn">Đặt Hàng</button>--%>
                        <a id="btnCheckout" href="" class="btn">Đặt Hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $('#btnCheckout').click(function () {
        let data = {};
        let formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        data["created_date"] = Date.parse((new Date()).toISOString());

        let user_id = $('#user_id').val();
        let link;

        if (user_id !== "") {
            link = "/checkout/order-received?user_id=" + user_id + "&created_date=" + data.created_date;
        } else{
            link = "/checkout/order-received?created_date=" + data.created_date;
        }

        addBill(data);

        $('#btnCheckout').attr('target', '_self');
        $('#btnCheckout').attr('href', link);
    });

    function addBill(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                let billDetail = {};
                <c:forEach var="cart" items="${cart}">
                    billDetail["bill_id"] = result.bill_id;
                    billDetail["product_id"] = ${cart.value.productModel.product_id};
                    billDetail["quantity"] = ${cart.value.quantity};
                    addBillDetail(billDetail);
                </c:forEach>
            },
            error: function (error) {
                console.log("ERROR" + error);
            }
        });
    }

    function addBillDetail(data) {
        $.ajax({
            url: '${APIurl1}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function () {
                console.log("Success");
            },
            error: function (error) {
                console.log("ERROR" + error);
            }
        });
    }
</script>
</body>
</html>
