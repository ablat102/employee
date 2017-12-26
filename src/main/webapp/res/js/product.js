$(function () {
    //验证物品名称
    //匹配汉字
    var a = /[\u4e00-\u9fa5]/gm;
    var productName = $('.productName');

    function validateProductName() {
        if (productName.val().trim() == "") {
            $('.productNameErr').text("*物品名称不能为空");
            productName.css('border', '1px solid red');
            return false;
        } else if (!a.test(productName.val())) {
            $('.productNameErr').text("*物品名必须汉字组成！");
            return false;
        } else {
            $('.productNameErr').text(" 正确 √");
            $('.productNameErr').css('color', 'green');
            productName.css('border', '1px solid green');
            return true;
        }
    }

    //验证商品价格是否为数字
    var reg = /^[0-9]+.?[0-9]*$/;
    var productPrice = $('.productPrice');

    function validateProductPrice() {
        if (productPrice.val().trim() == "") {
            $('.productPriceErr').text("*物品单价不能为空");
            productPrice.css('border', '1px solid red');
            return false;
        } else if (!reg.test(productPrice.val())) {
            $('.productPriceErr').text("*物品单价必须数字组成");
            productPrice.css('border', '1px solid red');
            return false;
        } else {
            productPrice.css('border', '1px solid green');
            $('.productPriceErr').css('color', 'green');
            $('.productPriceErr').text(" 正确 √");
            return true;
        }
    }

    //验证商品回收量是否为数字

    var productWeight = $('.productWeight');

    function validateProductWeight() {
        if (productWeight.val().trim() == "") {
            $('.productPriceErr').text("最低回收量不能为空");
            productWeight.css('border', '1px solid red');
            return false;
        } else if (!reg.test(productWeight.val())) {
            $('.productWeightErr').text("最低回收量是只能数字");
            productWeight.css('border', '1px solid red');
            return false;
        } else {
            productPrice.css('border', '1px solid green');
            $('.productWeightErr').css('color', 'green');
            $('.productWeightErr').text("正确 √");
            return true;
        }
    }

    productName.on('blur', function () {
        validateProductName();
    });

    productName.focus(function () {
        $('.productNameErr').text("");
    });

    productPrice.on('blur', function () {
        validateProductPrice();
    });

    productPrice.on('focus', function () {
        $('.productPriceErr').text("");
    });

    productWeight.on('blur', function () {
        validateProductWeight();
    });

    productWeight.on('focus', function () {
        $('.productWeightErr').text("");
    });

    function validateAll() {
        return validateProductName()
            && validateProductPrice()
            && validateProductWeight();
    }

    var addProducts = $('#addProduct');
    addProducts.on('click', function () {
        if (validateAll()) {
            $.ajax({
                url: 'addProduct',
                type: 'post',
                dataType: 'text',
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                data: {
                    'productName': $('.productName').val(),
                    'status': $('input:checked').val(),
                    'productPrice': $('.productPrice').val(),
                },
                success: function (data) {
                    alert(data);
                },
                error: function () {
                    alert("发送失败");
                }
            });

        } else {
            alert("必填内容不能为空！");
        }

    });

    //删除物品
    var del = $('.delete');
    del.on('click',function () {
        if ($(":checkbox:checked").length == 0) {
            alert("请选择要删除的管理员")
        } else {
            $.ajax({
                url : 'deleteProduct',
                type : 'post',
                data : {

                }
            });
        }
    })

})