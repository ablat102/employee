/**
 * Created by sunfang on 2016/3/22.
 */
var dep = [
    {
        "id": "1",
        "name": "市场部",
        "children": [
            {
                "id": "101",
                "name": "市场一部",
                "children": [
                    {
                        "id": "10101",
                        "name": "张三"
                    },
                    {
                        "id": "10102",
                        "name": "李四"
                    },
                    {
                        "id": "10103",
                        "name": "王五"
                    }
                ]
            },
            {
                "id": "102",
                "name": "市场二部",
                "children": [
                    {
                        "id": "10201",
                        "name": "张三2"
                    },
                    {
                        "id": "10202",
                        "name": "李四2"
                    },
                    {
                        "id": "10203",
                        "name": "王五2"
                    }
                ]
            }
        ]
    },
    {
        "id": "2",
        "name": "综合部",
        "children": [
            {
                "id": "201",
                "name": "综合一部",
                "children": [
                    {
                        "id": "20101",
                        "name": "郑六"
                    },
                    {
                        "id": "20102",
                        "name": "王琦"
                    }
                ]
            }
        ]
    }
];
$(function () {
    ///初始化
    var first = "<option vallue='0'>请选择...</option>";
    $("#sel1,#sel2,#sel3").append(first);
    //加载第一个下拉框
    $.each(dep, function (index, item) {
        var option = "<option value='" + item.id + "'>" + item.name + "</option>";
        $("#sel1").append(option);
    });
    //第一个下拉框改变事件
    $("#sel1").change(function () {
        var index = $(this).find(":selected").index();
        $("#sel2").empty();
        if (index > 0) {//选中了值
            index = index - 1;
            $.each(dep[index].children, function (index, item) {
                var option = "<option value='" + item.id + "'>" + item.name + "</option>";
                $("#sel2").append(option);
            });
            lastChange();
        } else {//选的是请选择
            $("#sel2,#sel3").empty();
            $("#sel2,#sel3").append(first);
        }

    });
    //第二个下拉框改变事件
    $("#sel2").change(function () {
        lastChange();
    });
    //根居第一和第二个下拉框的选中项加载第三个下拉框的option
    function lastChange() {
        var index1 = $("#sel1").find(":selected").index();
        index1 = index1 - 1;
        var index2 = $("#sel2").find(":selected").index();
        $("#sel3").empty();
        $.each(dep[index1].children[index2].children, function (index, item) {
            var option = "<option value='" + item.id + "'>" + item.name + "</option>";
            $("#sel3").append(option);
        });
    }
});