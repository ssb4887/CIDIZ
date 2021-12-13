$(document).ready(function () {
  var val = 0;

  $(".exit_btn").click(function () {
    $("#main_mn").stop().animate({ left: "100%" }, 800);
  });

  $("#about").click(function () {
    if (val == 0) {
      val = 1;
      $("#products").hide();
      $("#support").hide();
      // $(this).animate({ left: "250px", top: "50px" }, 800);
      $(this).animate({ left: "250px", top: "20px" }, 800);

      setTimeout(function () {
        $(".contents")
          .stop()
          .css({ display: "unset" })
          .animate({ top: "100px" });
      }, 1000);
    }
  });
  $("#products").click(function () {
    if (val == 0) {
      val = 2;
      $("#about").css({ opacity: "0" });
      $("#support").hide();
      // $(this).animate({ left: "300px", top: "-200px" }, 800);
      $(this).animate({ left: "300px", top: "-235px" }, 800);

      setTimeout(function () {
        $(".contents")
          .stop()
          .css({ display: "unset" })
          .animate({ top: "100px" });
      }, 1000);
    }
  });

  $("#support").click(function () {
    if (val == 0) {
      val = 3;
      $("#about").css({ opacity: "0" });
      $("#products").css({ opacity: "0" });
      // $(this).animate({ left: "300px", top: "-500px" }, 800);
      $(this).animate({ left: "300px", top: "-493px" }, 800);

      setTimeout(function () {
        $(".contents")
          .stop()
          .css({ display: "unset" })
          .animate({ top: "100px" });
      }, 1000);
    }
  });

  $("#menu h4").click(function () {
    if (val == 1) {
      $(this).next(".contents").stop().css({ display: "none" });
      $("#about").animate({ left: "0px", top: "0px" }, 800);
      setTimeout(function () {
        $("#products").show();
        $("#support").show();
        $(".contents").hide();
        $(".contents").animate({ top: "0px" });
        val = 0;
      }, 1000);
    }
    if (val == 2) {
      $(this).next(".contents").stop().css({ display: "none" });
      $("#products").animate({ left: "0px", top: "0px" }, 800);
      setTimeout(function () {
        $("#about").css({ opacity: "1" });
        $("#support").show();
        $(".contents").hide();
        $(".contents").animate({ top: "0px" });
        val = 0;
      }, 1000);
    }
    if (val == 3) {
      $(this).next(".contents").stop().css({ display: "none" });
      $("#support").animate({ left: "0px", top: "0px" }, 800);
      setTimeout(function () {
        $("#about").css({ opacity: "1" });
        $("#products").css({ opacity: "1" });
        $(".contents").hide();
        $(".contents").animate({ top: "0px" });
        val = 0;
      }, 1000);
    }
  });
});
