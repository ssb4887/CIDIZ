//────────────────────────────────────────
$(document).ready(function () {
  // 이미지 변경
  var imgBtn = $("#img_btn .ibc_btn");
  var images = $("#product .phmb_img > img");

  $(imgBtn).click(function (e) {
    e.preventDefault();
    var path = $(this).attr("href");
    $(imgBtn).removeClass("act");
    $(this).addClass("act");

    // 클릭했던 이미지랑 현재 이미지랑 속성이 같지 않으면 참인 부분 출력
    if (path != $(images).attr("src")) {
      $(images).attr({ src: path });
      $(images).css({ opacity: 0 }).animate({ opacity: 1 });
    }
  });

  // 수량 버튼
  $("#bc_down").click(function (e) {
    e.preventDefault();
    var stat = $("#bc_num").val();
    var num = parseInt(stat, 10);
    num--;
    if (num <= 0) {
      alert("더 이상 줄일수 없습니다.");
      num = 1;
    }
    $("#bc_num").val(num);
  });
  $("#bc_up").click(function (e) {
    e.preventDefault();
    var stat = $("#bc_num").val();
    var num = parseInt(stat, 10);
    num++;

    if (num > 20) {
      alert("단체 주문은 1899 - 3176로 문의 주세요.");
      num = 20;
    }
    $("#bc_num").val(num);
  });
});
