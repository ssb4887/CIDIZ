$(document).ready(function () {
    //상단 찾기 부분
    $(".search").css({ display: "none" });

    $(".write").click(function () {
        $(this).css({ display: "none" });
        $(".search").css({ display: "block" });
    });
    $(".search-box-close").click(function () {
        $(".search").css({ display: "none" });
        $(".write").css({ display: "block" });
    });


    // 비디오 영상 부분
    var video = $(document).find('#video');
    var x_button = $(document).find('.stop');
    var play_button = $(document).find('.play');

    $("#video").hide();
    x_button.hide();

    $(".play").click(function () {
        video.show();
        video.get(0).play();
        x_button.show();
        play_button.hide();
    });

    $(".stop").click(function () {
        video.hide();
        x_button.hide();
        play_button.show();
    });


    // 내용 : 1. PRODUCTS 부분
    $(function () {
        $(".c_products .list li").on("mouseenter", function (e) {
            e.preventDefault();
            $(this).addClass("active");
            $(".c_products").addClass("active");
        });
        $(".c_products .list li").on("mouseleave", function (e) {
            e.preventDefault();
            $(this).removeClass("active");
            $(".c_products").removeClass("active");
        });
    });

    // 내용 : 2. 리뷰 부분
    var current = 1;
    $(".c_review .text > div").hide(); //왼쪽설명글 전체숨김
    $(".c_review .text > div").eq(current).show();//특정왼쪽설명글대상만 보임

    var current = 1;
    $("#prev").click(function (e) {
        e.preventDefault();

        if (current > 1) {
            current--;
            // cun = current + 1
            // $(".txt_num").text(cun);
            $(".txt_num").text(current);
            slideTarget(current);
        }
    });

    $("#next").click(function (e) {
        e.preventDefault();

        if (current < 4) {
            current++;
            var num = current;
            $(".txt_num").text(current);
            slideTarget(num);
        }
    });

    function slideTarget(n) {

        // if (current == n) return     
        var posx = n * (-790) + "px";
        current = n;
        //console.log(current);
        $(".viewer ul").animate({ left: posx });
        $(".c_review .viewer ul li").eq(current).find("div").css({ opacity: "0", left: "1000px" }).animate({ opacity: "1", left: "500px", "z- index": "-4" }, 1000);

        $(".c_review .text > div").hide();
        $(".c_review .text > div").eq(current).show();

    }

});