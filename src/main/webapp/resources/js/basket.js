//────────────────────────────────────────
$(document).ready(function () {
	
	$("#basket_box").on("click", "#checked_all",function(){
		var checked = $(this).is(":checked");
		if(checked){
			$(this).parents("#basket_box").find("input").prop("checked", true);
		} else {
			$(this).parents("#basket_box").find("input").prop("checked", false);
		}
	});

	$("#basket_box").on("click", ".checked", function() {
		var checked = $(this).is(":checked");
		
		if (!checked){
			$("#checked_all").prop("checked", false);
		}
	
	});
	
	$("#deleteBasketBtn").click( function() {
		$("#checked_all").prop("checked", false);
	});
});
