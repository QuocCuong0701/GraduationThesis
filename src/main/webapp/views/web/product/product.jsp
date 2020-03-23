<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sản phẩm</title>
</head>
<body>
    <!-- Breadcurb AREA -->
    <div class="breadcurb-area">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li>Men</li>
            </ul>
        </div>
    </div>
    <!-- Product Item AREA -->
    <div class="product-item-area">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <div class="product-item-categori">
                    <div class="product-type">
                        <h2>Product Type</h2>
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Dresses</a></li>
                            <li><a href="#" class="active"><i class="fa fa-angle-right"></i>Shirts</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Coats</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Jackets</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Storts</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Jeans</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Skirts</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Lingeris</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Shoes</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Bags</a></li>
                        </ul>
                    </div>
                </div>
                <div class="price-filter">
                    <h2>Filter by price</h2>
                    <div id="slider-range"></div>
                    <button class="btn btn-default">Filter</button>
                    <p>
                        <label for="amount">Price:</label>
                        <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                    </p>
                </div>
                <div class="filter-size-area">
                    <h2>Filter by Size</h2>
                    <div class="filter-size">
                        <div class="filter-size-left">
                            <a href="#"><p>M (6)</p></a>
                            <a href="#"><p>X (7)</p></a>
                            <a href="#"><p>XS (10)</p></a>
                        </div>
                        <div class="filter-size-right">
                            <a href="#"><p>M (6)</p></a>
                            <a href="#"><p>X (7)</p></a>
                            <a href="#"><p>XS (10)</p></a>
                        </div>
                    </div>
                </div>
                <div class="add-shop">
                    <div class="add-kids single-add">
                        <a href="#"><img src="<c:url value="/template/webimg/banner/kids-ad.jpg/"/>" alt="add"></a>
                    </div>
                    <div class="add-dress single-add">
                        <a href="#"><img src="<c:url value="/template/web/img/banner/kids-ad-2.jpg"/>" alt="add"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-8">
                <div class="product-item-list">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="product-item-heading">
                                <div class="item-heading-title">
                                    <h2>Shirts</h2>
                                </div>
                                <div class="result-short-view">
                                    <div class="result-short">
                                        <p>Showing 1-9 of 18 results </p>
                                        <div class="result-short-selection">
                                            <select>
                                                <option>Default sorting</option>
                                                <option>Sort by popularity</option>
                                                <option>Sort by average rating</option>
                                                <option>Sort by newness</option>
                                                <option>Sort by price: low to high</option>
                                                <option>Sort by price: high to low</option>
                                            </select>
                                            <i class="fa fa-sort-alpha-asc"></i>
                                        </div>
                                    </div>
                                    <div class="view-mode">
                                        <a href="shop.html" class="active"><i class="fa fa-th-large"></i></a>
                                        <a href="single-shop.html"><i class="fa fa-th-list"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-1.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-3.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-4.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-5.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-6.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-7.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-8.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 hidden-sm">
                            <div class="single-item-area">
                                <div class="single-item">
                                    <div class="product-item-img">
                                        <a href="#">
                                            <img class="primary-img" src="<c:url value="/template/web/img/shop/item-9.jpg"/>" alt="item">
                                            <img class="secondary-img" src="<c:url value="/template/web/img/shop/item-2.jpg"/>" alt="item">
                                        </a>
                                        <div class="product-item-action">
                                            <a href="#"><i class="fa fa-external-link"></i></a>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-item-content">
                                        <h2><a href="#">Blue shirt</a></h2>
                                        <div class="best-product-rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                        </div>
                                        <h3>$17.00</h3>
                                    </div>
                                </div>
                                <div class="item-action-button fix">
                                    <a href="#">Add to Cart</a>
                                    <div class="item-action-icon">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                        <a href="#"><i class="fa fa-signal"></i></a>
                                        <a href="#"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-pagination floatright">
                    <ul class="pagination">
                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
