$(document).ready(function () {

        $(".ag_modal1").click(function () {
            $(".agree_daddy1").show();
        });

        $(".ag_modal2").click(function () {
            $(".agree_daddy2").show();
        });

        $(".ag_modal3").click(function () {
            $(".agree_daddy3").show();
        });

        $(".agree_x1").click(function () {
            $(".agree_daddy1").hide();
        });

        $(".agree_x2").click(function () {
            $(".agree_daddy2").hide();
        });

        $(".agree_x3").click(function () {
            $(".agree_daddy3").hide();
        });

        $(".cl_modal").click(function () {
            $(".cancel_daddy").show();
        });

        $(".cancel_x").click(function () {
            $(".cancel_daddy").hide();
        });

});

// var modals = document.getElementsByClassName('agree_daddy');
// var openBtn = document.getElementsByClassName('ag_modal');
// var closeBtn = document.getElementsByClassName('agree_x');
// var funcs = [];

// function Modal(num) {
//     return function () {
//         openBtn[num].onclick = function () {
//             modals[num].getElementsByClassName.display = 'flex';
//             console.log('a');
//         };

//         closeBtn[num].onclick = function () {
//             modals[num].getElementsByClassName.display = 'none';
//         };
//     };    
// }

// for (var i = 0; i < openBtn.length; i++) {
//     funcs[i] = Modal(i);
// }

// for (var j = 0; j < openBtn.length; j++) {
//     func[j]();
// }



