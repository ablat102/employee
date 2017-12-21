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
                url: "login",
                type: "post",
                dataType: "text",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                data: {
                    "adminValue": $('#empNo').val(),
                    "password": $('#password').val()
                },
                success: function (data) {
                    if (data == 0) {
                        $('#err1').show();
                        $('#errMsg1').text("管理员账号错误");
                    } else if (data == 1) {
                        window.location.href = "main";
                    } else if (data == 2) {
                        $('#err1').show();
                        $('#errMsg1').text("您没有权限进入后台");
                    } else if (data == 3) {
                        $('#err1').show();
                        $('#errMsg1').text("管理员密码错误");
                    } else {
                        $('#err1').show();
                        $('#errMsg1').text("系统出现错误");
                    }
                },
                error: function (e) {
                    $('#err1').show();
                    $('#errMsg1').text("系统出现错误");
                }
            });
        }
    });
})