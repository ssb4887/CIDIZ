$(document).ready(function () {
    var hideL = $("#search_store .hideList");
    hideL.hide();
    $("#close_btn").hide();

    $("#more_btn").click(function () {
        insertImg();
    });

    $("#close_btn").click(function () {
        deleteImg();
    });

    function insertImg() {
        $(hideL).fadeIn();
        $("#more_btn").hide();
        $("#close_btn").show();
    }
    function deleteImg() {
        $(hideL).fadeOut();
        $("#more_btn").show();
        $("#close_btn").hide();
    }
});
