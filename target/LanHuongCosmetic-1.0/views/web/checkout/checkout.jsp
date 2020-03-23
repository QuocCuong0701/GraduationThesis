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
                <li><a href="#">Home</a></li>
                <li><a href="#">Page</a></li>
                <li>Checkout</li>
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
                        <h2>BILLING ADDRESS</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenea ligula eget dolor. Aenean massa.</p>
                    </div>
                    <div class="checkout-form">
                        <form action="#" method="post" class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    country <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <select>
                                        <option>Sellect Country</option>
                                        <option>America</option>
                                        <option>Afganisthan</option>
                                        <option>Bangladesh</option>
                                        <option>Chin</option>
                                        <option>Japna</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    First Name <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Last Name <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Company Name <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Address <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">

                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Town / City <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Postcode <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    E-mail Address <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Phone <sup>*</sup>
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-12">
                                    <input type="checkbox"> Create an account?
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-12">
                                    <input type="checkbox"> Ship a billing address?
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    Order Now
                                </label>
                                <div class="col-md-9">
                                    <textarea rows="9"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-5">
                <div class="review-order">
                    <div class="checkout-head">
                        <h2>Review your Order</h2>
                    </div>
                    <div class="single-review">
                        <div class="single-review-img">
                            <a href="#"><img src="<c:url value="/template/web/img/checkout.jpg"/>" alt="review"></a>
                        </div>
                        <div class="single-review-content fix">
                            <h2><a href="#">Lorem ipsum dolor sit</a></h2>
                            <p><span>Color :</span> Verdigris Red</p>
                            <p><span>Size :</span> L</p>
                            <h3>$150.0</h3>
                        </div>
                    </div>
                    <div class="single-review">
                        <div class="single-review-img">
                            <a href="#"><img src="<c:url value="/template/web/img/checkout.jpg"/>" alt="review"></a>
                        </div>
                        <div class="single-review-content fix">
                            <h2><a href="#">Lorem ipsum dolor sit</a></h2>
                            <p><span>Color :</span> Verdigris Red</p>
                            <p><span>Size :</span> L</p>
                            <h3>$150.0</h3>
                        </div>
                    </div>
                    <div class="single-review">
                        <div class="single-review-img">
                            <a href="#"><img src="<c:url value="/template/web/img/checkout.jpg"/>" alt="review"></a>
                        </div>
                        <div class="single-review-content fix">
                            <h2><a href="#">Lorem ipsum dolor sit</a></h2>
                            <p><span>Color :</span> Verdigris Red</p>
                            <p><span>Size :</span> L</p>
                            <h3>$150.0</h3>
                        </div>
                    </div>
                    <div class="subtotal-area">
                        <div class="subtotal-content fix">
                            <h2 class="floatleft">Subtotal</h2>
                            <h2 class="floatright">$450</h2>
                        </div>
                        <div class="subtotal-content fix">
                            <h2 class="floatleft">Shipping & Handling </h2>
                            <h2 class="floatright">$15</h2>
                        </div>
                        <div class="subtotal-content fix">
                            <h2 class="floatleft">Grand Total</h2>
                            <h2 class="floatright">$465</h2>
                        </div>
                    </div>
                    <div class="payment-method">
                        <h2>PAYMENT METHOD</h2>
                        <div class="payment-checkbox">
                            <input type="checkbox" checked> Direct Bank Transfer
                        </div>
                        <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.</p>
                        <div class="payment-checkbox">
                            <input type="checkbox"> Chaque Payment <br>
                            <input type="checkbox"> Paypal
                        </div>
                        <button type="button" class="btn">Place Order</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
