/**
 * Created by sunfang on 2016/3/24.
 */
function inputTipText(){
    $("input[type='text']").each(function(){
            var oldVal=$(this).val();   //默认的提示性文本
            $(this)
                .css({"color":"#888"})  //灰色
                .focus(function(){
                    if($(this).val()!=oldVal){$(this).css({"color":"#000"})}else{$(this).val("").css({"color":"#888"})}
                })
                .blur(function(){
                    if($(this).val()==""){$(this).val(oldVal).css({"color":"#888"})}
                })
                .keydown(function(){$(this).css({"color":"#000"})})

        })
}

$(function(){
    inputTipText();  //直接调用就OK了
    //全选
    $(".checkall").click(function(){
        if(this.checked){
            $(":checkbox").attr("checked",true)

        }else{
            $(":checkbox").attr("checked",false)
        }
    });
});