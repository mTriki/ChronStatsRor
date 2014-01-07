$(function() {

	$("[id^='equipes_'] img").click(function(){
		$(".activeTeam").removeClass("activeTeam");
		$(this).addClass("activeTeam");
	});

	$(".menu-second-level").hide();
	$(".menu-third-level").hide();
	$(".info").hide();

	$(".menu-first-level > li > a").click(function(){
		$("li[id^='link_equipes']").removeClass("current");
		$("[id^='equipes_']").hide();
		$("li[id^='link_equipes']").animate({
									  height: 0,
									  opacity: "toggle"
									}, "slow" );
		$("[id^= 'mnu']").hide(500);
		$("#mnu_"+$(this).attr('id')).animate({
				  height: "toggle",
				  opacity: "toggle"
				}, "slow" );
		$(".current, .current-page").removeClass("current-page");

		$(this).toggleClass("current-page");
	});

	$("a[id^='link_equipes']").click(function(){
		str = $(this).attr('id');
		$(this).toggleClass("current");

		$("#equipes_"+ str.substring(13)).animate({
  height: "toggle",
  opacity: "toggle"
}, "slow" );

	});

});