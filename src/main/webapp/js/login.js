/**
 * 登录验证
 * */
$(function () {
    //登录按钮
    var loginBtn =$("#loginBtn");
    //用户名输入框
    var userNo = $('#empNo');
    //密码输入框
    var password = $('#password');

    //验证用户名
    function validateEmpNo() {
        if (userNo.val() != "") {
            return true;
        }else {
            userNo.css('border','1px solid red');
            return false;
        }
    }
    
    //验证密码
    function validatePassword() {
        if (password.val() != "") {
            return true;
        }else {
            password.css('border','1px solid red');
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


    loginBtn.click(function () {
        if (validate()) {

        }
    });
})