$(document).ready(function(){

    // ********************* resulvation ********************* 
        // legt menu 클릭시 이벤트
            $(".rv-menu").click(function(){
    
                var i = $(this).index();   
                
                $(".rv-menu").removeClass("on-click");
                $(".rv-menu").eq(i).addClass("on-click");   
    
                $(".rv-on").removeClass("on");
                $(".rv-on").eq(i).addClass("on"); 
            }); 
    
    
    // ********************* qa ********************* 
        // (1:1 문의) 새문의 작성 클릭시 이벤트
            $(".qa-btn").each(function(index){
                $(this).attr("data-index", index);
            }).click(function(){
    
                var i = $(this).attr("data-index");
    
                $(".qa-btn").removeClass("on-bottom");
                $(".qa-btn").eq(i).addClass("on-bottom");
            
            });
    
            $(".qa-btn").click(function(){
    
                var i = $(this).index(); // 버튼 1, 2, 3....
                var b = $(".qa-content-wrap").index();
    
                // 버튼 1번 클릭시 1번 컨텐츠 들어오기
                $(".qa-con-none").removeClass("on");
                $(".qa-con-none").eq(i).addClass("on");
                
            });
            


    
            // 작성하기 버튼
            $(".qa-write-btn").click(function(){
                
                $(".qa-write-wrap2").show();
                $(".qa-write-wrap1").hide();
    
            });
            

            $(".myqa-title").click(function(){
                $(".myqa-list").hide();
                $(".myqa-list-sub").show();
            });
            
            
        // 회원정보 편집창
            $(".notis-btn").click(function(){
    
                console.log("aa");
                $(".notis").hide();
                $(".notis-re").show();
    
            });
    
            $(".notis-re-btn>.cancell").click(function(){
    
                console.log("aa");
                $(".notis-re").hide();
                $(".notis").show();
    
            });
    
    
    
    
    }); // end of main