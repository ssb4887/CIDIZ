// rb_group > rb_photo rbp_hide > li
//    div   >    ul

//────────────────────────────────────────
$(document).ready(function () {
  var hidePhoto = $("#review .rbp_hide");

  $("#moreDown").click(function () {
    insertImg();
  });

  $("#moreUp").click(function () {
    deleteImg();
  });

  function insertImg() {
    $(hidePhoto).fadeIn();
    $("#moreDown").hide();
    $("#moreUp").show();
  }

  function deleteImg() {
    $(hidePhoto).fadeOut();
    $("#moreUp").hide();
    $("#moreDown").show();
  }
});

// $(document).ready(function () {
//   var reviewChild = $("#review").children().eq(2);
//   var reviewChild2 = $("#review").children().eq(4);
//   var hidePhoto = $("#review .rbp_hide");

//   $("#moreDown").click(function (e) {
//     if (e == 1) {
//       insertFun();
//     } else if (e == 2) {
//       insertFun2();
//     }
//   });

//   $("#moreUp").click(function () {
//     deleteFun();
//   });

//   function insertFun() {
//     $(reviewChild).fadeIn();
//     var nextBro = $(reviewChild).prev();
//     $(nextBro).fadeIn();
//   }
//   function insertFun2() {
//     $(reviewChild2).fadeIn();
//     var nextBro = $(reviewChild).prev();
//     $(nextBro).fadeIn();
//     $("#moreDown").hide();
//     $("#moreUp").show();
//   }
//   function deleteFun() {
//     $(hidePhoto).fadeOut();
//     $("#moreUp").hide();
//     $("#moreDown").show();
//   }
// });
