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
    <!-- 按钮 -->
    <link rel=stylesheet type=text/css href="/Public/css//lrtk.css">

    <!-- 左侧栏 -->
    <script type=text/javascript src="/Public/js//jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="/Public/js//slide.js"></script>


    <link rel=stylesheet type=text/css href="/Public/css//photo.css" tppabs="http://www.rdfx.net/css/photo.css">
    <script src="/Public/js//jqueryPhoto.js" tppabs="http://www.rdfx.net/js/jqueryPhoto.js" type="text/javascript"></script>

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
    <!-- nav -->
    <div class="nav">
    <ul>
        <?php if(is_array($public_nav)): $i = 0; $__LIST__ = $public_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="meu_<?php echo ($vo['class']); ?>">
                <a href="<?php echo U('/Home/Article/index/nav/'.$vo['id']);?>" title="<?php echo ($vo['title']); ?>">
                    <span style="display: none;"><?php echo ($vo['name']); ?></span>
                </a>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
</div>
    <!-- nav -->
    <!-- 公告栏 -->

    <!-- 公告栏 -->

    <!-- center 首页内容 -->
    <div class="mian">
        <div class="mian_left" id="left_data" style="position: relative; top: 0px;">
            <div class="radius_top radius_<?php echo ($nav_info['class']); ?>" style="height: 14px;"></div>
<div class="cont_list">
    <h3 class="title_<?php echo ($nav_info['class']); ?>"><?php echo ($nav_info['name']); ?></h3>
    <div class="cont_ul cont_ul_<?php echo ($nav_info['class']); ?>">
        <div class="blank" style="height:1px; overflow:hidden;"></div>
        <?php if(is_array($category_list)): $i = 0; $__LIST__ = $category_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><h4 class="meu_<?php echo ($vo['class_id']); ?>">

                <?php if(($vo['type'] == '0')): ?><a href="<?php echo U('/Home/Article/index/cid/'.$vo['id']);?>" class="<?php echo ( ($vo['id']==$category_info['id'] )?'meu_on':'');?>" title="<?php echo ($vo['title']); ?>" id="category_<?php echo ($vo['id']); ?>"><?php echo ($vo['name']); ?></a>
                <?php elseif(($vo['type'] == '1')): ?>
                    <a href="<?php echo ($vo['uri']); ?>" class="<?php echo ( ($vo['id']==$category_info['id'] )?'meu_on':'');?>" title="<?php echo ($vo['title']); ?>" id="category_<?php echo ($vo['id']); ?>"><?php echo ($vo['name']); ?></a>
                <?php else: ?>
                    <a href="<?php echo U('/Home/Article/index/cid/'.$vo['id']);?>" class="<?php echo ( ($vo['id']==$category_info['id'] )?'meu_on':'');?>" title="<?php echo ($vo['title']); ?>" id="category_<?php echo ($vo['id']); ?>"><?php echo ($vo['name']); ?></a><?php endif; ?>

            </h4>
            <ul id="menu_c<?php echo ($vo['id']); ?>" style="<?php echo ( ( ($vo['id']==$category_info['pid'] ) || ($vo['id']==$category_info['id'] ) )?'display:block;':'display:none;');?>">
                <?php if(is_array($vo['child'])): $i = 0; $__LIST__ = $vo['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i; if(($vo['type'] == '0')): ?><li><a href="<?php echo U('/Home/Article/index/cid/'.$vo2['id']);?>" class="<?php echo ( ($vo2['id']==$category_info['id'] )?'meu_on':'');?>" title="<?php echo ($vo['title']); ?>" id="category_<?php echo ($vo2['id']); ?>" ><?php echo ($vo2['name']); ?></a></li> <!--  style="color:#F00;" -->
                    <?php elseif(($vo['type'] == '1')): ?>
                        <li><a href="<?php echo ($vo2['uri']); ?>" class="<?php echo ( ($vo2['id']==$category_info['id'] )?'meu_on':'');?>" title="<?php echo ($vo['title']); ?>" id="category_<?php echo ($vo2['id']); ?>" ><?php echo ($vo2['name']); ?></a></li> <!--  style="color:#F00;" -->
                    <?php else: ?>
                        <li><a href="<?php echo U('/Home/Article/index/cid/'.$vo2['id']);?>" class="<?php echo ( ($vo2['id']==$category_info['id'] )?'meu_on':'');?>" title="<?php echo ($vo['title']); ?>" id="category_<?php echo ($vo2['id']); ?>" ><?php echo ($vo2['name']); ?></a></li> <!--  style="color:#F00;" --><?php endif; endforeach; endif; else: echo "" ;endif; ?>
            </ul><?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
    <div class="bott_radius bott_radius_<?php echo ($nav_info['class']); ?>"></div>
</div>
<div class="radius_bottom"></div>
        </div>
        <div class="mian_right">
            <div class="radius_right_top"></div>
            <div class="mian_cont_right">
                <div class="bar_right bar_<?php echo ($nav_info['class']); ?>">
    <div class="title_left title_left_<?php echo ($nav_info['class']); ?>"> <span><?php echo ($category_info['name']?:'暂无子栏目'); ?></span> </div>
    <div class="title_right">
        <ul>
            <li><span>当前位置:</span></li>
            <li><a href="<?php echo U('/Home/Index/index');?>">首页</a></li>
            <li><span>&gt;</span></li>
            <li><a href="<?php echo U('/Home/Article/index/nav/'.$nav_info['id']);?>"><?php echo ($nav_info['name']); ?></a></li>
            <li><span>&gt;</span></li>
            <li><a href="<?php echo U('/Home/Article/index/cid/'.$category_info['id']);?>"><?php echo ($category_info['name']?:'暂无子栏目'); ?></a></li>
        </ul>
    </div>
</div>

                <div class="mian_right_text">
				<?php if(($showRight == 'list')): ?><div class="mian_text new_list">
    <ul>
		<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><span style="float:left; color:#F00;"></span>
				<a href="<?php echo U('/Home/Article/index/newsid/'.$vo['id']);?>">
					<!--|<?php echo ($vo['id']); ?>|-->
					<?php echo (mb_strimwidth($vo['title'],0,70,'..','utf-8')); ?>

				</a>
				<span><?php echo date('Y-m-d',$vo['posttime']);?></span>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
    <div class="page">
		<style>
			div.meneame{padding:3px;font-size:80%;margin:3px;color:#ff6500;text-align:center;}
			div.meneame a{border:#ff9600 1px solid;padding:5px 7px;background-position:50% bottom;/*background-image:url(../images/meneame.jpg);*/margin:0 3px 0 0;text-decoration:none;}
			div.meneame a:hover{border:#ff9600 1px solid;background-image:none;color:#ff6500;background-color:#ffc794;}
			div.meneame a:active{border:#ff9600 1px solid;background-image:none;color:#ff6500;background-color:#ffc794;}
			div.meneame span.current{border:#ff6500 1px solid;padding:5px 7px;font-weight:bold;color:#ff6500;margin:0 3px 0 0;background-color:#ffbe94;}
			div.meneame span.disabled{border:#ffe3c6 1px solid;padding:5px 7px;color:#ffe3c6;margin:0 3px 0 0;}
		</style>
        <div id="page" class="meneame">
			<?php echo ($page); ?>
            <!--共计4记录
            <span>&nbsp;首页&nbsp;</span>
            <span>&nbsp;上一页&nbsp;</span>
            <span style="color:red">1</span>
            <span>&nbsp;下一页&nbsp;</span>
            <span>&nbsp;尾页&nbsp;</span>
            &nbsp;&nbsp;&nbsp;页次：1/1页&nbsp;&nbsp;15条/页-->
            <!--select onchange="window.location=this.value"><option value="?m=default.news_list&amp;classid=8&amp;cid=41&amp;id=89&amp;page=1" selected="selected">第1页</option></select --> 
		</div>
	</div>
</div>
				<?php elseif($showRight == 'news'): ?>
					<h1 style="text-align:center"><?php echo ($content['title']); ?><!--<?php echo ($content['id']); ?>--></h1>
<div class="author"><span>作者：<?php echo ($content['pid']); ?></span><span>发布日期:<?php echo date('Y-m-d',$content['posttime']);?></span><span>浏览次数：<?php echo ($content['clickcount']); ?></span></div>
<br>
<div id="content">
<?php echo ($content['content']); ?>
</div>


				<?php else: ?>
					<div class="mian_text new_list">
    <ul>
		<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><span style="float:left; color:#F00;"></span>
				<a href="<?php echo U('/Home/Article/index/newsid/'.$vo['id']);?>">
					<!--|<?php echo ($vo['id']); ?>|-->
					<?php echo (mb_strimwidth($vo['title'],0,70,'..','utf-8')); ?>

				</a>
				<span><?php echo date('Y-m-d',$vo['posttime']);?></span>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
    <div class="page">
		<style>
			div.meneame{padding:3px;font-size:80%;margin:3px;color:#ff6500;text-align:center;}
			div.meneame a{border:#ff9600 1px solid;padding:5px 7px;background-position:50% bottom;/*background-image:url(../images/meneame.jpg);*/margin:0 3px 0 0;text-decoration:none;}
			div.meneame a:hover{border:#ff9600 1px solid;background-image:none;color:#ff6500;background-color:#ffc794;}
			div.meneame a:active{border:#ff9600 1px solid;background-image:none;color:#ff6500;background-color:#ffc794;}
			div.meneame span.current{border:#ff6500 1px solid;padding:5px 7px;font-weight:bold;color:#ff6500;margin:0 3px 0 0;background-color:#ffbe94;}
			div.meneame span.disabled{border:#ffe3c6 1px solid;padding:5px 7px;color:#ffe3c6;margin:0 3px 0 0;}
		</style>
        <div id="page" class="meneame">
			<?php echo ($page); ?>
            <!--共计4记录
            <span>&nbsp;首页&nbsp;</span>
            <span>&nbsp;上一页&nbsp;</span>
            <span style="color:red">1</span>
            <span>&nbsp;下一页&nbsp;</span>
            <span>&nbsp;尾页&nbsp;</span>
            &nbsp;&nbsp;&nbsp;页次：1/1页&nbsp;&nbsp;15条/页-->
            <!--select onchange="window.location=this.value"><option value="?m=default.news_list&amp;classid=8&amp;cid=41&amp;id=89&amp;page=1" selected="selected">第1页</option></select --> 
		</div>
	</div>
</div><?php endif; ?>
				</div>
            </div>
            <div class="radius_right_bottom"></div>
        </div>
        <div class="clear"></div>
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