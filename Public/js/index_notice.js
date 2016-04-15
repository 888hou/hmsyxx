//¹«¸æ¹ö¶¯
function AutoScroll(obj){
	$(obj).find("ul:first").animate({
			marginTop:"0px"
	},300,function(){
			$(this).css({marginTop:"18px"}).find("li:first").appendTo(this);
			$(this).animate({marginTop:"0px"})
	});
}
$(document).ready(function(){
timer = setInterval('AutoScroll("#scrollDiv")',3000);
var oDiv = document.getElementById('scrollDiv');
oDiv.onmouseover = function () {
	clearInterval(timer);	
}

oDiv.onmouseout = function () {
	timer = setInterval('AutoScroll("#scrollDiv")',3000)
}
});