	function getByClass(oParent, sClass) {
		var aEle=oParent.getElementsByTagName('*');
		var aResult=[];
							
		for(var i=0;i<aEle.length;i++) {
			if(aEle[i].className==sClass) {
				aResult.push(aEle[i]);
			}
		}
							
		return aResult;
	}
	/*window.onload = function(){
		var oAd = document.getElementById('ad');
	setTimeout("$('#ad').attr('class' ,'ad add')",5000);
	}
	$(".gb910").click(function(){
		$('#ad').attr('class' ,'ad add');
	})*/
	