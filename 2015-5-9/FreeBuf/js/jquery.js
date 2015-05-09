$(document).ready(function($) {
	//$('.lanPos').css('display', 'none');
	$(".left-side>ul>li").mouseover(function(event) {
		 //$(this).parents('ul').children('div.lanPos')
			 //.css('display', 'block');
		$(this).children('ul.hide').stop().fadeIn();
	});
	$(".left-side>ul>li").mouseout(function(event) {
		 // $(this).parents('ul').children('.lanPos')
		 // 	.css('display', 'none');
		$(this).children('ul.hide').stop().fadeOut();
	});
	$('.lanPos').css('top', $('.hover').offset().top - 123);
	$('.left-side>ul>li').hover(function() {
		$('.lanPos').css('top', $(this).offset().top - 123);
	}, function() {
		$('.lanPos').css('top', $('.hover').offset().top - 123);
	})
	$('.left-side>ul>li').click(function() {
		for (var i = 0; i < $('.left-side>ul>li').size(); i++) {
			if (this == $('.left-side>ul>li').get(i)) {
				$('.left-side>ul>li')
					.eq(i).children('a').addClass('hover');
			} else {
				$('.left-side>ul>li')
					.eq(i).children('a').removeClass('hover');
			}
		}
	})
});