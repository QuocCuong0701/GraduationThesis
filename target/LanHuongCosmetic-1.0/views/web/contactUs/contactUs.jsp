<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Liên hệ</title>
</head>
<body>
    <!-- Breadcurb AREA -->
    <div class="breadcurb-area">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li>Contact</li>
            </ul>
        </div>
    </div>
    <!-- Contact-us area -->
    <div class="contact-us-area">
    <div class="map-area">
        <div class="contact-map">
            <div id="googleMap"></div>
        </div>
    </div>
    <div class="contact-information">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="contact-details">
                        <div class="contact-head">
                            <h2>CONTACT DETAILS</h2>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parent montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa.</p>
                        </div>
                        <div class="contact-bottom">
                            <p><span><i class="fa fa-phone"></i></span> Phone: +8800 186-70-592-70</p>
                            <p><span><i class="fa fa-envelope"></i></span> E-mail: raminbd96@gmail.com</p>
                            <p><span><i class="fa fa-link"></i></span> Website: <a href="#">www.bootexpert.com</a></p>
                            <p><span><i class="fa fa-map-marker"></i></span> Address: Opposite 123 Avenue, London, United Kingdom</p>
                        </div>
                        <div class="contact-social-icon footer-social-icon">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="contact-leave-message">
                        <div class="contact-head">
                            <h2>Leave A MESSAGE</h2>
                        </div>
                        <form action="#" class="form-horizontal">
                            <div class="form-group col-md-6">
                                <label class="control-label">
                                    Subject
                                </label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="control-label">
                                    E-mail
                                </label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="control-label">
                                    Order reference
                                </label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="control-label">
                                    Attach File
                                </label>
                                <input type="file" class="form-control">
                            </div>
                            <div class="form-group col-md-12">
                                <label class="control-label">
                                    Message
                                </label>
                                <textarea rows="5" class="form-control"></textarea>
                            </div>
                            <button class="btn">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
