window.onload=function(){
$(".sroll_img").find("img").each(function() {
				$(this).css("margin-top",((320-$(this).height())/2)+"px");
		});
}
$(document).ready(function() {
	var oLi=$(".sroll_img_min").find("li").length;
	$(".sroll_img_min").find("li").eq(0).addClass("cur");
	if(oLi<=1){
		$(".sroll_img_min").hide();
		}
	window.Sindex=1;
	$(".textmask").each(function(){
        //$(this).find("p")
		//alert($(this).find("p").height());
		if($(this).find("p").height()<75){
			$(this).siblings(".rmore").hide();	
		}
    });
	$(".sroll_text").find("li").hide();
	$(".sroll_text").find("li").eq(0).show();			
    $(".sroll_img").find("ul").width(oLi*480);
	//下展
	$(".rmore").click(function(){
		if($(this).text()=="更多>>"){
			$(this).siblings(".textmask").height("auto");
			$(this).parent("li").height("auto");
			$(".sroll_text").find("ul").css("height","auto");
			$(this).text("收起>>");
			}
		else{
			$(this).siblings(".textmask").height("75px");
			$(this).parent("li").height("75px");
			$(this).text("更多>>");
				}
	});
	
	if(oLi<=5){
		$(".sroll_img_min").find(".srollmask").width(oLi*80);
		$(".sroll_img_min").width(oLi*80+28);
		}
		else{
		$(".sroll_img_min").find(".srollmask").width(5*80);
		$(".sroll_img_min").width(5*80+28)
		}
	
	
	function srollmove(speed){
		$(".rmore").siblings(".textmask").height("75px");
		$(".rmore").parent("li").height("75px");
		$(".rmore").text("更多>>");
		if(speed){
			if(Sindex==oLi){
				Sindex=1;
				}
			else{
				Sindex++;
				//alert(Sindex);
			}		
		}
		else{
			if(Sindex==1){						
				Sindex=oLi
			}	
			else if(Sindex>0){
				Sindex--;
			}
		}
			
			//alert(Sindex);
			
			if(Sindex>5){
				$(".srollmask").find("ul").animate({left:(Sindex-1)*(-80)},"slow");
				
				//alert((Sindex-5)*(-80))
				}
			else if(Sindex==1){
				$(".srollmask").find("ul").animate({left:0},"slow");
				//alert(0);
				}
			//alert('');
			
			$(".sroll_img").find("ul").css("left",(Sindex-1)*-480)
			$(".sroll_text").find("li").hide();
			$(".sroll_text").find("li").eq(Sindex-1).show();
			$(".sroll_img_min").find("li").removeClass("cur");
			$(".sroll_img_min").find("li").eq(Sindex-1).addClass("cur");
	}
	
	mytime=setInterval(function(){srollmove(true)},3000);
	$(".prevmin").click(function(){
		clearInterval(mytime);
		srollmove(false);
		mytime=setInterval(function(){srollmove(true)},3000);
	});
	$(".nextmin").click(function(){
		clearInterval(mytime);
		srollmove(true);
		mytime=setInterval(function(){srollmove(true)},3000);
	});
	$(".srollmask").find("li").click(function(){
		//alert($(this).index());
		clearInterval(mytime);
		Sindex=$(this).index();
		srollmove(true);
		mytime=setInterval(function(){srollmove(true)},3000);
	});
	$(".s_bj").mouseover(function(){
		clearInterval(mytime);
		});
	$(".sroll_text").mouseover(function(){
		clearInterval(mytime);
		});
	$(".srollmask").mouseover(function(){
		clearInterval(mytime);
		});
	$(".s_bj").mouseout(function(){
		mytime=setInterval(function(){srollmove(true)},3000);
		});
	$(".sroll_text").mouseout(function(){
		mytime=setInterval(function(){srollmove(true)},3000);
		});
	$(".srollmask").mouseout(function(){
		mytime=setInterval(function(){srollmove(true)},3000);
		});
});