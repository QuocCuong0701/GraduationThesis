<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Giỏ hàng</title>
</head>
<body>
    <!-- Breadcurb AREA -->
    <div class="breadcurb-area">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li>Cart</li>
            </ul>
        </div>
    </div>
    <!-- Chart AREA -->
    <div class="chart-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="chart-item table-responsive fix">
                        <table class="col-md-12">
                            <thead>
                            <tr>
                                <th class="th-product">Product</th>
                                <th class="th-details">Details</th>
                                <th class="th-edit">Edit</th>
                                <th class="th-qty">Qty</th>
                                <th class="th-price">Price</th>
                                <th class="th-total">Sub Total</th>
                                <th class="th-delate">Delete</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="th-product">
                                    <a href="#"><img src="<c:url value="/template/web/img/cart/cart-1.jpg"/>" alt="cart"></a>
                                </td>
                                <td class="th-details">
                                    <h2><a href="#">Baby New Style Jackets</a></h2>
                                    <div class="best-product-rating">
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                    </div>
                                    <p>Product Color : Red</p>
                                    <p>Product Code  : 2201 RS</p>
                                </td>
                                <td class="th-edit"><a href="#">Edit</a></td>
                                <td class="th-qty">
                                    <input type="number" min="1" placeholder="1">
                                </td>
                                <td class="th-price">$225.00</td>
                                <td class="th-total">$450.00</td>
                                <td class="th-delate"><a href="#"><i class="fa fa-trash"></i></a></td>
                            </tr>
                            <tr>
                                <td class="th-product">
                                    <a href="#"><img src="<c:url value="/template/web/img/cart/cart-2.jpg"/>" alt="cart"></a>
                                </td>
                                <td class="th-details">
                                    <h2><a href="#">Baby New Style Jackets</a></h2>
                                    <div class="best-product-rating">
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                    </div>
                                    <p>Product Color : Red</p>
                                    <p>Product Code  : 2201 RS</p>
                                </td>
                                <td class="th-edit"><a href="#">Edit</a></td>
                                <td class="th-qty">
                                    <input type="number" min="1" placeholder="1">
                                </td>
                                <td class="th-price">$225.00</td>
                                <td class="th-total">$450.00</td>
                                <td class="th-delate"><a href="#"><i class="fa fa-trash"></i></a></td>
                            </tr>
                            <tr>
                                <td class="th-product">
                                    <a href="#"><img src="img/cart/cart-3.jpg" alt="cart"></a>
                                </td>
                                <td class="th-details">
                                    <h2><a href="#">Baby New Style Jackets</a></h2>
                                    <div class="best-product-rating">
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                    </div>
                                    <p>Product Color : Red</p>
                                    <p>Product Code  : 2201 RS</p>
                                </td>
                                <td class="th-edit"><a href="#">Edit</a></td>
                                <td class="th-qty">
                                    <input type="number" min="1" placeholder="1">
                                </td>
                                <td class="th-price">$225.00</td>
                                <td class="th-total">$450.00</td>
                                <td class="th-delate"><a href="#"><i class="fa fa-trash"></i></a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="cart-button">
                        <button type="button" class="btn">Continue Shopping</button>
                        <button type="button" class="btn floatright">Update Cart</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="cart-shopping-area fix">
                    <div class="col-md-4 col-sm-4">
                        <div class="calculate-shipping chart-all">
                            <h2>CALCULATE SHIPPING</h2>
                            <p>Enter your destination to get a shipping estimate.</p>
                            <select>
                                <option>Sellect Country</option>
                                <option>America</option>
                                <option>Afganisthan</option>
                                <option>Bangladesh</option>
                                <option>Chin</option>
                                <option>Japna</option>
                            </select>
                            <select>
                                <option>State/Provinence</option>
                                <option>Dhaka</option>
                                <option>Borishal</option>
                                <option>Gajipur</option>
                                <option>Kustiya</option>
                                <option>Vola</option>
                                <option>Gaibandha</option>
                            </select>
                            <input type="text" placeholder="Zip / Post Code">
                            <button type="button" class="btn">Get A Quote</button>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="chart-all">
                            <h2>PROMOTIONAL CODE</h2>
                            <p>Enter your destination to get a shipping estimate.</p>
                            <input type="text" placeholder="Zip / Post Code">
                            <button type="button" class="btn">Get A Quote</button>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="shopping-summary chart-all">
                            <div class="shopping-cost-area">
                                <h2>SHOPPING BAG SUMMARY</h2>
                                <div class="shopping-cost">
                                    <div class="shopping-cost-left">
                                        <p>Sub Total </p>
                                        <p>GRAND TOTAL </p>
                                    </div>
                                    <div class="shopping-cost-right">
                                        <p>$2.010.00</p>
                                        <p>$2.010.00</p>
                                    </div>
                                </div>
                                <button type="button" class="btn">Proceed to Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
