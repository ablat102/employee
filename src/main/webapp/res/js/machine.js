$(document).ready(function () {
    var sure = $('#sure');
    var machineDate = $('.machineDate');
    var machineLocation = $('.machineLocation');
    var date = $('.date');

    //验证是否为空
    function validateMachineDate(){
        if (machineDate.val().trim() != null ) {
            return true;
        }
    }
    //验证机器位置是否为空
    function validateMachineLocation(){
        // if ()
    }
    //验证机器状态是否被选
    function validateMachineStatus(){

    }
    //验证机器放置时间是否为空并且是否正确的时间格式
    function validateMachineDate(){

    }
    sure.on('click',function () {
        alert("aaa");
        $.ajax({
            url : "addMachine",
            type : "post",
            dataType : "text",
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            data : {
                "machineDate" : machineDate.val(),
                "machineLocation" : machineLocation.val(),
                "status" : $('input[type=radio]:checked').val(),
                "date" : date.val()
            },
            success : function (data) {
                alert(data);
            },
            error : function () {
                alert("发送失败");
            }
        });
    });
});