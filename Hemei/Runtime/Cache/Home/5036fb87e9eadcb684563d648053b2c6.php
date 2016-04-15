<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- 引入Title -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, user-scalable=1;" name="viewport" />
<title>和美实验学校<?php echo ($page_title); ?></title>
<meta name="keywords" content="和美实验学校,小学,教育,人才培育,海港区和没实验学校,秦皇岛和没实验学校,秦皇岛小学	,海港区小学,先进小学,海港区幼儿园,幼儿园,秦皇岛幼儿园,秦皇岛公立小学,公办幼儿园,秦皇岛公办幼儿园,和美幼儿园" />
<meta name="description" content="秦皇岛市海港区和没实验学校小学是一所隶属于海港区教育局的公办综合性小学，是一所以育人为目的的小学/幼儿园" />
<link href="/Public/css//style.css" rel="stylesheet"/>
<script type="text/javascript" src="/Public/js//jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="/Public/js//common.js"></script>
<script type="text/javascript" src="/Public/js//Scripts/swfobject_modified.js"></script>

<script type="text/javascript" src="/Public/js//header_favorite.js"></script>
<script type="text/javascript" src="/Public/js//header_ad.js"></script>
<!-- 滚动大图 -->
<script type="text/javascript" src="/Public/js//script.js"></script>
<script type="text/javascript" src="/Public/js//index_banner.js"></script>
<script type="text/javascript" src="/Public/js//index_imgscroll.js"></script>
<!-- 公告栏 -->
<script type="text/javascript" src="/Public/js//index_notice.js"></script>
</head>
<body>
<!-- head -->
<div class="head">
    <div class="headLeft">
        <div class="logo"><a href="<?php echo U('/Home/Index/index');?>"><img src="/Public/images//logo.png" width="90" height="90"/></a></div>
        <div class="Txt">
            <p><a href="javascript:;"><img src="/Public/images//Txt.png" width="308" height="32" /></a></p>
            <p class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Hemei Experimental School , Qinhuangdao</p>
        </div>
    </div>
    <div class="headRight">
        <div class="title">
         <span>
			<a href="<?php echo U('/Home/Index/index');?>"><b class="in"></b></a>
			<a href="<?php echo U('/Home/Index/index');?>" >返回首页</a>
		</span>
         <span>
			<a href="javascript:;" onclick="AddFavorite(window.location,document.title)"><b class="sc"></b></a>
			<a onclick="AddFavorite(window.location,document.title)" style="cursor: pointer;">加入收藏</a>
		 </span>
         <span>
			 <a href="<?php echo U('/Home/Article/index/cid/5');?>"><b class="lx"></b></a>
			 <a href="<?php echo U('/Home/Article/index/cid/5');?>">联系和美</a>
		 </span>
            <!--<a onclick="SetHome(this,window.location)" style="cursor: pointer;">设为首页</a>
            <a onclick="AddFavorite(window.location,document.title)" style="cursor: pointer;">收藏本站</a>
            -->
        </div>
    </div>
</div>
<!-- head !!-->

<div class="indexBg">
	<!-- 广告 -->
	<!-- ad -->
<div class="ad add" id="ad">

</div>
<!-- ad !!-->
	<!-- 广告 -->
	<!-- banner -->
	
<!-- banner -->
<div id="banner">
    <div class="banner">
        <ul id="header_banner">
            <?php if(is_array($public_nav)): $i = 0; $__LIST__ = $public_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php echo ($vo['uri']); ?>" title="<?php echo ($vo['name']); ?>">
                        <img title="<?php echo ($vo['title']); ?>" src="<?php echo ($vo['image']); ?>" width="558" height="360"/>
                    </a>
                    <a href="<?php echo U('/Home/Article/index/nav/'.$vo['id']);?>" title="<?php echo ($vo['name']); ?>">
                        <div class="li<?php echo ($vo['class']); ?>"></div>
                    </a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
</div>
<!-- banner !!-->
	<!-- banner -->
	<!-- 公告栏 -->
	<!-- notice 公告栏 -->
<div class="notice">
    <b>
        <a style="background:none; padding-right:20px;" href="<?php echo U('/Home/Article/index/cid/1');?>">通知公告</a>
    </b>
    <p class="noticeTxt">
         <a href="<?php echo U('/Home/Article/index/newsid/'.$notice_top['id']);?>" title="<?php echo ($notice_top['info']); ?>">
             <?php echo (mb_strimwidth($notice_top['title'],0,46,'..','utf-8')); ?>
         </a>
       <!-- <a href="<?php echo ($public_notice_top['uri']); ?>" title="<?php echo ($public_notice_top['title']); ?>"><?php echo ($public_notice_top['name']); ?></a> -->
    </p>
    <div style="position:relative; height:19px; overflow:hidden; padding-top:24px;">
        <div id="scrollDiv" style="position:relative; height:19px; overflow:hidden;">
            <ul>
                <?php if(is_array($notice_list)): $i = 0; $__LIST__ = $notice_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('/Home/Article/index/newsid/'.$vo['id']);?>" title="<?php echo ($vo['info']); ?>">
                        <?php echo (mb_strimwidth($vo['title'],0,44,'..','utf-8')); ?>
                    </a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                <!--
                <?php if(is_array($public_notice_list)): $i = 0; $__LIST__ = $public_notice_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo[uri]); ?>" title="<?php echo ($vo['title']); ?>"><?php echo ($vo['name']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                -->
            </ul>
        </div>
    </div>
</div>
<!-- notice 公告栏!!-->
	<!-- 公告栏 -->

	<!-- center 首页内容 -->
	<div class="inContent">
		<!-- 左侧部分 -->
		<div class="inLeft">
			<!-- 最新新闻 -->
			<div class="news">
			  <div class="newsBox">

				<div class="newsTop">
					<h3><a href="<?php echo U('/Home/Article/index/cid/3');?>">和美新闻</a></h3>
					<span><a href="<?php echo U('/Home/Article/index/cid/3');?>">more</a></span>
				</div>
				<div class="newsImg">
					<a href="<?php echo U('/Home/Article/index/newsid/'.$news_top['id']);?>">
						<img src="<?php echo ($news_top['image']); ?>" width="171" height="122" />
					</a>
				</div>
				<div class="newsTxt">
				<h2>
					<?php echo (mb_strimwidth($news_top['title'],0,32,'..','utf-8')); ?>
				</h2>
				<p><?php echo (mb_strimwidth($news_top['info'],0,57,'..','utf-8')); ?></p>
				<p style=" text-align:right;"><a href="<?php echo U('/Home/Article/index/newsid/'.$news_top['id']);?>">查看详细</a></p>
				</div>
				<div class="newsList">
					<ul>
						<?php if(is_array($news_list)): $i = 0; $__LIST__ = $news_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
								<span><?php echo date('Y-m-d',$vo['posttime']);?></span>
								<a href="<?php echo U('/Home/Article/index/newsid/'.$vo['id']);?>">
									<?php echo (mb_strimwidth($vo['title'],0,43,'..','utf-8')); ?>
								</a>
							</li><?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
				</div>
			  </div>
			</div>
		<!-- 最新新闻 -->
		<!-- 学校简介 -->
		<div class="survey">
			<!--
			<div class="surTop"><h3><a href="<?php echo U('/Home/Article/index/cid/2');?>">学校概况</a></h3>
				<span><a href="<?php echo U('/Home/Article/index/cid/2');?>">more</a></span></div>
				<div class="surImg">
					<a href="<?php echo U('/Home/Article/index/newsid/'.$info_news['id']);?>"><img src="<?php echo ($info_news['image']); ?>" width="320" /></a>
				</div>
				<div class="surTxt">
					<p>
						<?php echo ($info_news['info']); ?>
					</p>
					<p class="more"><a href="<?php echo U('/Home/Article/index/newsid/'.$info_news['id']);?>">查看详细</a></p>
				</div>
			</div>
			-->
			<div class="surTop"><h3><a href="<?php echo U('/Home/Article/index/cid/2');?>">学校概况</a></h3>
				<span><a href="<?php echo U('/Home/Article/index/cid/2');?>">more</a></span></div>
				<div class="surImg">
					<a href="<?php echo U('/Home/Article/index/newsid/'.$info_news['id']);?>"><img src="<?php echo ($info_news['image']); ?>" width="320" height="164" /></a>
				</div>
				<div class="surTxt">
					<p>
						<?php echo (mb_strimwidth($info_news['info'],0,200,'..','utf-8')); ?>
					</p>
					<p class="more"><a href="<?php echo U('/Home/Article/index/newsid/'.$info_news['id']);?>">查看详细</a></p>
				</div>
			</div>
		</div>
		<!-- 左侧部分 -->
		<!-- 学校简介 -->
		<!-- 最右边栏 -->
		<div class="inRight">
		<!-- 新闻报道 -->
			<div class="media">
				<div class="mediaTop"><a href="<?php echo U('/Home/Article/index/cid/4');?>">媒体报道</a></div>
				<div class="mediaList">
					<ul>
						<?php if(is_array($movie_list)): $i = 0; $__LIST__ = $movie_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('/Home/Article/index/newsid/'.$vo['id']);?>"><?php echo (mb_strimwidth($vo['title'],0,24,'..','utf-8')); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
				</div>
			</div>
		<!-- 新闻报道 -->
			<!-- 党建频道 -->
			<div class="inAd">
				<a href="javascript:alert('功能正在开发中！');">
					<img src="/Public/images//hmdj.png" width="196" height="132"/>
				</a>
			</div>
			<!-- 党建频道 -->
		</div>
		<!-- 最右边栏 -->

	</div>
	<!-- center 首页内容!!-->
	<!-- 友情链接 -->
	<!-- blogroll -->
<div class="blogroll">
    <?php if(is_array($public_links)): $i = 0; $__LIST__ = $public_links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class='bloL'>
            <ul>
                <?php if(is_array($vo)): $i = 0; $__LIST__ = $vo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$link): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($link['uri']); ?>" title="<?php echo ($link['title']); ?>">
                        <?php echo (mb_strimwidth($link['name'],0,20,'..','utf-8')); ?>
                    </a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<!-- blogroll !!-->
	<!-- 友情链接 -->
</div>

<!-- foot -->

<!-- foot -->
<div class="foot footer" style="text-align:center;">
    <p>Copyright@2016 hmsyxx.cn Inc.All rights reserved.和美实验学校 版权所有
    冀ICP备999999999号</p> 　　
</div>
<!-- foot !!-->


<!-- foot !!-->
<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>

</body>
</html>