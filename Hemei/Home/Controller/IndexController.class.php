<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends PublicController {
    public function index(){
        $this->getNewsList();
        $this->getMovieList();
        $this->getInfoNews();
        $this->getNoticeList();
		$this->display();
        //$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;font-size:24px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px } a,a:hover{color:blue;}</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p><br/>版本 V{$Think.version}</div><script type="text/javascript" src="http://ad.topthink.com/Public/static/client.js"></script><thinkad id="ad_55e75dfae343f5a1"></thinkad><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
    }
    public function getNoticeList(){
        $newsid = $this->websets['INDEX_NOTICE_CID'];
        $news = D('News');
        $list = $news->getIndexNewsList($newsid,1,10);
        $top = $news->getTopNews($newsid);
        $this->assign('notice_list',$list);
        $this->assign('notice_top',$top);
    }
    public function getNewsList(){
        $newsid = $this->websets['INDEX_NEWS_CID'];
        //var_dump($newsid);
        $news = D('News');
        $list = $news->getIndexNewsList($newsid,1,6);
        $top = $news->getTopNews($newsid);
        $this->assign('news_list',$list);
        $this->assign('news_top',$top);
    }
    public function getMovieList(){
        $newsid = $this->websets['INDEX_MOVIE_CID'];
        $news = D('News');
        $list = $news->getIndexNewsList($newsid,0,6);
        $this->assign('movie_list',$list);
    }
    public function getInfoNews(){
        //$newsid = $this->websets['INDEX_MOVIE_CID'];
        //$news = D('News');
        //$info = $news->getNews($newsid);
        $info['id'] = $this->websets['INDEX_INFO_NEWS'];
        $info['info'] = $this->websets['INDEX_INFO_TEXT'];
        $info['image'] = $this->websets['INDEX_INFO_PHOTO'];
        $this->assign('info_news',$info);
    }
}