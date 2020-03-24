<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="RegistrationURL" value="/registration"/>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<c:url value="/template/web/img/img-01.png"/>" alt="IMG">
            </div>

            <form action="<c:url value="/registration"/>" method="post" id="formSubmit" class="login100-form validate-form">
                <span class="login100-form-title">
                    Đăng Ký Tài Khoản
                </span>

                <c:if test="${not empty message}">
                    <div class="alert alert-${alert}" style="border-radius: 25px;">
                            ${message}
                    </div>
                </c:if>

                <div class="wrap-input100 validate-input" data-validate = "Nhập email hợp lệ. Ví dụ: ex@abc.xyz">
                    <input class="input100" type="text" name="user_email" placeholder="Email">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Tên đăng nhập không được để trống">
                    <input class="input100" type="text" name="user_name" placeholder="Tên đăng nhập">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Nhập mật khẩu">
                    <input class="input100" type="password" name="user_pass" placeholder="Mật khẩu">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Nhập lại mật khẩu">
                    <input class="input100" type="password" name="repassword" placeholder="Nhập lại mật khẩu">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                </div>

                <div class="container-login100-form-btn">
                    <input type="hidden" value="login" name="action"/>
                    <button type="submit" class="login100-form-btn">Đăng Ký</button>
                </div>

                <div class="text-center p-t-50">
                    <a class="txt2" href="<c:url value="/login?action=login"/> ">
                        <i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
                        Quay Lại Trang Đăng Nhập
                    </a>
                    <a class="txt2" href="<c:url value="/home"/> ">
                        <i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
                        Quay Lại Trang Chủ
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#formSubmit').submit(function (e) {
            e.preventDefault();
            let error = $('form div.alert-validate').map(function () {
                return $(this).val();
            }).get();
            if (error.length === 0) {
                let data = {};
                let formData = $('#formSubmit').serializeArray();
                $.each(formData, function (i, v) {
                    data["" + v.name + ""] = v.value;
                });
                //addAccount(data);
            }
        })
    })

    function addAccount(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                if (result != null) {
                    window.location.href = "${RegistrationURL}?message=create_account_success";
                } else {
                    window.location.href = "${RegistrationURL}?message=create_account_error";
                }
            },
            error: function (error) {
                window.location.href = "${RegistrationURL}?message=error_system";
            }
        });
    }
</script>