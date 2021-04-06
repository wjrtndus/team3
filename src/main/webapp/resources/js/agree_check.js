// all체크박스 체크 이벤트
$(document).click(function(){

    $("#check_all").click(function(){
        if($("#check_all").prop("checked")){
            $("input[name=service_agree]").prop("checked",true);
        }else{
            $("input[name=service_agree]").prop("checked",false);
        }
    });

});

// 개별선택이 전부 체크되면 all체크박스도 체크되는 이벤트
$(document).click(function(){

    var chek = $("input[name=service_agree]:checked").length;
    // console.log(chek);
    
    // 전체가 체크되면 all을 체크
    if(chek == 3) {
        $("#check_all").prop("checked",true);
    }
    // 아니면 바로 체크 해제
    else 
        $("#check_all").prop("checked",false);
});

$(document).click(function(){

    var cheek = $("input[name=all_agree]:checked").length;
    $(".btn33").click(function(){
        if(cheek !== 1) {
            alert('동의체크를 해주세요');
        };
    });
});



