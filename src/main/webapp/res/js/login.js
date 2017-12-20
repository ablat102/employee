/**
 * 登录验证
 * */
$(function () {
    //登录按钮
    var loginBtn = $("#loginBtn");
    //用户名输入框
    var userNo = $('#empNo');
    //密码输入框
    var password = $('#password');

    //验证用户名
    function validateEmpNo() {
        if (userNo.val() != "") {
            $('#err1').hide();
            return true;
        } else {
            $('#err1').show();
            $('#errMsg1').text("用户名不能为空");
            return false;
        }
    }

    //验证密码
    function validatePassword() {
        if (password.val() != "") {
            $('#err1').hide();
            return true;
        } else {
            $('#err1').show();
            $('#errMsg1').text("密码不能为空");
            return false;
        }
    }

    //整体验证
    function validate() {
        return validateEmpNo() && validatePassword();
    }

    userNo.blur(function () {
        validateEmpNo();
    });

    password.blur(function () {
        validatePassword();
    });

    userNo.focus(function () {
        $('#err1').hide();
    });

    password.focus(function () {
        $('#err1').hide();
    });
    loginBtn.click(function () {
        if (validate()) {
            $.ajax({
                url: "admin/login",
                type: "post",
                dataType: "text",
                data: {
                    "adminValue": $('#empNo').val(),
                    "password": $('#password').val()
                },
                success: function (data) {
                    if (data != null) {
                        window.location.href = "admin/main/";
                    }
                    else {
                        alert("账号或者密码不能为空");
                    }
                },
                error: function (e) {
                    alert("失败了" + e);
                }
            });
        }
    });
})