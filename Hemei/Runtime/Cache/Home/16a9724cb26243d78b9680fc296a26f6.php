<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- 引入Title -->
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
            <p class="text">&nbsp;&nbsp;&nbsp;&nbsp;The Hemei Elementary School in QinHuangDao City</p>
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
			 <a href="javascript:;"><b class="lx"></b></a>
			 <a href="javascript:;">联系和美</a>
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
                <a href="<?php echo U('/Home/Article/class/'.$vo['id']);?>" title="<?php echo ($vo['title']); ?>">
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
            <div class="radius_top radius_7" style="height: 14px;"></div>
            <div class="cont_list">
                <h3 class="title_7">
                    七彩教师        		</h3>
                <div class="cont_ul cont_ul_7">
                    <div class="blank" style="height:1px; overflow:hidden;"></div>
                    <h4 class="meu_1">
                        <a href="#">“卉”学笑的团队</a>
                    </h4>
                    <ul style="display:block;">
                        <li><a href="#">少先队代表大会</a></li>
                        <li><a href="#" style="color:#F00;">升旗仪式</a></li>
                        <li><a href="#">主题大队会</a></li>
                    </ul>
                    <h4 class="meu_2">
                        <a href="#">“烩”生活的团队</a>
                    </h4>
                    <h4 class="meu_3">
                        <a href="#">“惠”学习的团队</a>
                    </h4>
                    <h4 class="meu_4">
                        <a href="#">“绘”工作的团队</a>
                    </h4>
                    <h4 class="meu_5">
                        <a href="#">“慧”创新的团队</a>
                    </h4>
                    <h4 class="meu_6">
                        <a href="#">“汇”才艺的团队</a>
                    </h4>
                    <h4 class="meu_7">
                        <a href="#">“荟”研究的团队</a>
                    </h4>
                </div>
                <div class="bott_radius bott_radius_7"></div>
            </div>
            <div class="radius_bottom"></div>
        </div>
        <div class="mian_right">
            <div class="radius_right_top"></div>
            <div class="mian_cont_right">
                <div class="bar_right bar_7">
                    <div class="title_left title_left_7"> <span>理念简介</span> </div>
                    <div class="title_right">
                        <ul>
                            <li><span>当前位置:</span></li>
                            <li><a href="#">首页</a></li>
                            <li><span>&gt;</span></li>
                            <li><a href="#">七彩教师</a></li>
                        </ul>
                    </div>
                </div>
                <div class="mian_right_text">
                    <div class="mian_text">
                        文章内容
                    </div>
                </div>
                <div class="mian_right_text">
    <div class="inkPhoBox">
        <div class="scroll">
            <div class="left">
                <div class="mod18">
                    <span id="prevTop" class="btn prev"></span>
                    <span id="nextTop" class="btn next"></span>
                    <div class="bigImgBox">
                        <div id="picBox" class="picBox">
                            <ul class="cf" style="width: 15840px; left: -6220px;">
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241765233238.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241765556755.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241765894913.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241766237814.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241766626700.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241767039644.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241767381591.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241767824407.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241768226319.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241768571734.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241768982858.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241769341888.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241769745605.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241771851914.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241772418737.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241772802713.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241773161621.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241773742869.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241774177894.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241774569558.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/1424177495495.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241775317137.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241775658808.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241776014195.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241776382104.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241776686544.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241777147649.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241782946880.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241783306448.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241783685823.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241784041334.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241784386471.jpg"></a></li>
                                <li> <a href="#" target="_blank"><img src="/ueditor/php/upload/20150217/14241784724395.jpg"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="smImgBox">
                        <span id="prev" class="btn prev"></span>
                        <span id="next" class="btn next"></span>
                        <div id="listBox" class="listBox">
                            <ul class="cf" style="width: 2640px; left: -878px;">

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241765233238.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241765556755.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241765894913.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241766237814.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241766626700.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241767039644.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241767381591.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241767824407.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241768226319.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241768571734.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241768982858.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241769341888.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241769745605.jpg" style="height:44px;width:80px;"></li>

                                <li class="on"><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241771851914.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241772418737.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241772802713.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241773161621.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241773742869.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241774177894.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241774569558.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/1424177495495.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241775317137.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241775658808.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241776014195.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241776382104.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241776686544.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241777147649.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241782946880.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241783306448.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241783685823.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241784041334.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241784386471.jpg" style="height:44px;width:80px;"></li>

                                <li class=""><i class="arr2"></i><img src="/ueditor/php/upload/20150217/14241784724395.jpg" style="height:44px;width:80px;"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

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
                <?php if(is_array($vo)): $i = 0; $__LIST__ = $vo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$link): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($link['uri']); ?>" title="<?php echo ($link['title']); ?>"><?php echo ($link['name']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
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