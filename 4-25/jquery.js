$(document).ready(function() {
	$(".nav-search").click(function(event) {
		$(".nav-search-input-wrapper").show();
	});
	$(".left-side>ul>li>a").mouseover(function(event) {
		$(".side-bar-hide").fadeIn('slow');
	});
	$(".left-side>ul>li>a").mouseout(function(event) {
		$(".side-bar-hide").fadeOut('slow');
	});
});