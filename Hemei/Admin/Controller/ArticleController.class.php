<?php
namespace Home\Controller;
use Think\Controller;
class ArticleController extends PublicController {
    private $get_data;

    private $nav; // nav
    private $nav_info;
    private $category; //category
    private $category_list;
    private $category_info;
    private $category_type;

	private $news_info;
	
    public function _initialize(){
        parent::_initialize();
        $this->get_data = I('get.');
        if($this->get_data['nav'] >0){
            $this->nav = $this->get_data['nav'];
        }else{
            $this->nav = 8;
        }
        if($this->get_data['cid'] > 0){
            $this->getCategoryInfo(0,$this->get_data['cid']);
            $this->nav = $this->category_info['nid'];
        }else{
            $this->getCategoryInfo(1,$this->get_data['nav']);
        }

        //$this->assign('category_info',$this->category_info);

        $this->getNavInfo();

        $this->getCategoryList();
        $this->assign('category_list',$this->category_list);
		
		if(I('get.newsid')>0){
			//输出列表
			$this->assign('showRight','news');
			$this->showNews();

			$this->getCategoryInfo(0,$this->news_info['cid']);
			$this->nav = $this->category_info['nid'];
			
		}else{
			$this->assign('showRight','list');
			$this->getNewsList();
		}
		
		$this->assign('category_info',$this->category_info);
        $this->assign('nav_info',$this->nav_info);
    }
    public function getNavInfo(){
        $nav = D('Nav');
        $this->nav_info = $nav->getNavInfo($this->nav);
    }

    public function getCategoryList(){
        $category = D('Category');
        $category_list = $category->getCategoryList($this->nav);
        $info = $this->nav_info;
        $i = $info['class'];
        foreach($category_list as $key => $value){
            $category_list[$key]['child'] = $category->getCategoryChildList($value['id']);
            $category_list[$key]['class_id'] = $i;
            $i++;
            if($i>7){
                $i=1;
            }
        }
        $this->category_list = $category_list;
    }
    public function getCategoryInfo($type,$id){
        $category = D('Category');
        $category_info = $category->getCategoryInfo($type,$id);
        $this->category_info = $category_info;
    }


    //新闻列表
    public function getNewsList(){
		$news_list = D('News');
		$data = $news_list->getNewsList($this->category_info['id']);
		$this->assign('list',$data['list']);
		$this->assign('page',$data['page']);
		//var_dump($data['page']);
		//$this->display();
    }
	public function showNews(){
		$id = I('get.newsid');
		$news = D('News');
		$this->news_info = $news->getNews($id);
		
		$this->assign('content',$this->news_info );
	}
    public function setInfo(){
	
    }
    public function index(){
        //var_dump($this);
		$this->display();
    }
    public function page(){

    }

}