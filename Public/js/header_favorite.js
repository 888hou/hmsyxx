	// header 按钮 加入收藏
			function AddFavorite(sURL, sTitle) {
				var sURL = encodeURI(sURL);
				try{
					window.external.addFavorite(sURL, sTitle);  
				}catch(e) {  
					try{
						window.sidebar.addPanel(sTitle, sURL, "");  
					}catch (e) {  
						alert("\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u6b64\u64cd\u4f5c!\n\u8bf7\u60a8\u4f7f\u7528\u83dc\u5355\u680f\u6216Ctrl+D\u6536\u85cf\u672c\u7ad9\u3002");
					} 
				}
			}
			function SetHome(obj, vrl) {
				try {
					obj.style.behavior = 'url(#default#homepage)'; obj.setHomePage(vrl);
				}catch (e) {
					if (window.netscape) {
						try {
							netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
						}catch (e) {
							alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入'about:config'并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
						}
						var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
						prefs.setCharPref('browser.startup.homepage', vrl);
					}
				}
			}