$(document).ready(function(){

    var ww = $(window).width();
    var wh = $(window).height();

    // $(".section").css({
    //     width: ww,
    //     height: wh
    // });
                
    $(".btn-main .btn").each(function(index){
        $(this).attr("data-index",index);
    }).click(function(){
        
        var i=$(this).attr("data-index");
        
        $("html,body").animate({
            scrollTop: wh*i
        });
        
    });

    // slide banner
    var sts = 1200,
    std = 4000;

    function starttopslideshow()
    {

        $('#top-banner-background-1').css({'width':'100%','z-index':4});
        $('#top-banner-background-2').css({'width':'100%','z-index':3});
        $('#top-banner-background-3').css({'width':'100%','z-index':2});
        $('#top-banner-background-4').css({'width':'100%','z-index':1});
    
        $('#top-banner-background-1 div').addClass('active');
        $('#top-banner-background-2 div').removeClass('active');
        $('#top-banner-background-3 div').removeClass('active');
        $('#top-banner-background-4 div').removeClass('active');

        $('#top-banner-background-1').delay(std).animate({width:0},{
            duration:sts,
            start:function(){
               $('#top-banner-background-2 div').addClass('active');
            },
            complete:function(){
                $('#top-banner-background-1 div').removeClass('active');
                $('#top-banner-background-2').delay(std).animate({width:0},{
                    duration:sts,
                    start:function(){
                        $('#top-banner-background-3 div').addClass('active');
                    },
                    complete:function(){
                       $('#top-banner-background-2 div').removeClass('active');
                       $('#top-banner-background-3').delay(std).animate({width:0},{
                            duration:sts,
                            start:function(){
                                $('#top-banner-background-4 div').addClass('active');	
                            },
                            complete:function(){
                                $('#top-banner-background-3 div').removeClass('active');
                                $('#top-banner-background-4').delay(std).animate({width:0},{
                                    duration:sts,
                                    start:function(){
                                          $('#top-banner-background-1 div').addClass('active');
                                        $('#top-banner-background-1').css({'width':'100%','z-index':0});
                                    },
                                    complete:function(){
                                        starttopslideshow();
                                    }
                                });
                            }
                        });
                    }
                });
            }
        });
    }

    starttopslideshow();  //after intro


// ?????? ????????? ????????????
    // $(window).scroll(function(){
                
    //     sct=$(window).scrollTop();
        
    //     if(sct>=0 && sct<wh){
    //         $(".btn-main .btn").removeClass("on");
    //         $(".btn-main .btn").eq(0).addClass("on");
    //     }else if(sct>=wh && sct<wh*2){
    //         $(".btn-main .btn").removeClass("on");
    //         $(".btn-main .btn").eq(1).addClass("on");
    //     }else if(sct>=wh*2 && sct<wh*3){
    //         $(".btn-main .btn").removeClass("on");
    //         $(".btn-main .btn").eq(2).addClass("on");
    //     }else if(sct>=wh*3 && sct<wh*4){
    //         $(".btn-main .btn").removeClass("on");
    //         $(".btn-main .btn").eq(3).addClass("on");
    //     }
        
        
    // });

    $(".main-center-wrap").delay(300).animate({
        opacity: 1
    },1000);
    
    $(window).scroll(function(){
                
        sct=$(window).scrollTop();
        
        if(sct>=0 && sct<wh){
            $(".event-wrap li").eq(0).animate({
                opacity: 1,
                marginTop: 0
            },500);
            $(".event-wrap li").eq(1).delay(500).animate({
                opacity: 1,
                marginTop: 0
            },500);
            $(".event-wrap li").eq(2).delay(1000).animate({
                opacity: 1,
                marginTop: 0
            },500);
        }else if(sct>=wh && sct<wh*2){
            
            $(".lo-on2 .lo li").eq(0).animate({
                opacity: 1
            },500);
            $(".lo-on2 .lo li").eq(1).delay(300).animate({
                opacity: 1
            },500);
            $(".lo-on2 .lo li").eq(2).delay(600).animate({
                opacity: 1
            },500);
            $(".lo-on2 .lo li").eq(3).delay(900).animate({
                opacity: 1
            },500);
            $(".lo-on2 .lo-point").delay(1200).animate({
                opacity: 1
            },500);

        }else if(sct>=wh*2.5 && sct<wh*3.5){

            $(".review li").eq(0).animate({
                opacity: 1,
                marginTop: 0
            },500);
            $(".review li").eq(1).delay(200).animate({
                opacity: 1,
                marginTop: 0
            },500);
            $(".review li").eq(2).delay(400).animate({
                opacity: 1,
                marginTop: 0
            },500);
            $(".review li").eq(3).delay(600).animate({
                opacity: 1,
                marginTop: 0
            },500);

            $(".review li h2, .review li p, .review li span").delay(1100).animate({
                opacity: 1,
                marginTop: 0
            },500);
        }
        
        
    });


// section3

$(".local-label li").click(function(){

    var i = $(this).index();   
    
    $(".local-label li").removeClass("on-bottom");
    $(".local-label li").eq(i).addClass("on-bottom");   

    $(".local-wrap-in").removeClass("lo-on");
    $(".local-wrap-in").eq(i).addClass("lo-on"); 
});


//????????? ???????????? ?????? 
$('.acmBtn').click(function() { 
 	var checkArray = new Array(); 
 	$('input[class=cf]:checked').each(function() { 
 		checkArray.push($(this).val()); 
 	}); 
 	console.log(checkArray); 
}); 



//     // date
//    document.getElementById('from').value = new Date().toISOString().substring(0, 10);
   
//    $(function() {
//       var dates = $("#from, #to ").datepicker({
//          prevText : '?????? ???',
//          nextText : '?????? ???',
//          monthNames : [ '1???', '2???', '3???', '4???', '5???', '6???',
//                '7???', '8???', '9???', '10???', '11???', '12???' ],
//          monthNamesShort : [ '1???', '2???', '3???', '4???', '5???',
//                '6???', '7???', '8???', '9???', '10???', '11???', '12???' ],
//          dayNames : [ '???', '???', '???', '???', '???', '???', '???' ],
//          dayNamesShort : [ '???', '???', '???', '???', '???', '???', '???' ],
//          dayNamesMin : [ '???', '???', '???', '???', '???', '???', '???' ],
//          dateFormat : 'yy-mm-dd',
//          showMonthAfterYear : true,
//          yearSuffix : '???',
//          maxDate : '+30d',
//          onSelect : function(selectedDate) {
//             var option = this.id == "from" ? "minDate"
//                   : "maxDate", instance = $(this).data(
//                   "datepicker"), date = $.datepicker
//                   .parseDate(
//                         instance.settings.dateFormat
//                               || $.datepicker._defaults.dateFormat,
//                         selectedDate, instance.settings);
//             dates.not(this).datepicker("option", option,
//                   date);
//          }
//       });

}); // end of main