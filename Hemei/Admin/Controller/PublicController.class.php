<?php
namespace Home\Controller;
use Think\Controller;
class PublicController extends Controller {
    public $websets = array();
    public function _initialize(){
        //parent::_initialize();
        //$this->assign('page_title','test');
        $this->showIndexData();
        $this->showLinks();
        $this->getSets();
    }
    public function showIndexData(){
        if(CONTROLLER_NAME == 'Index'){
            $this->showNotice();
            $this->showNavIndex();
        }else{
            $this->showNavIndex();
        }
    }
    public function getSets(){
        $sets = D('Sets')->getSetsList();
        $this->assign('web_sets',$sets);
        $this->websets = $sets;
        //var_dump($sets);
    }
    public function showNavIndex(){
        $data = D('Nav');
        $nav = $data->getNav();
        $this->assign('public_nav',$nav);
    }
    public function showNotice(){
        $data = D('Notice');
        $top = $data->getTopNotice();
        $list = $data->getNotice();
        $this->assign('public_notice_list',$list);
        $this->assign('public_notice_top',$top);
        //var_dump($list);
    }
    public function showLinks(){
        $data = $this->makeLinks();
        $this->assign('public_links',$data);
    }
    public function makeLinks(){
        $data = D('Links')->getLinks();
        $array = array();
        for($i=0;$i<4;$i++){
            $array[$i] = array();
            for($j=0;$j<4;$j++){
                $array[$i][$j] = $data[($j*4)+$i]?:null;//(array('uri'=>'#','name'=>'<span style="color:orange">接入链接</span>')); //0 0 4 8 12 i=0 j = 0 1 2 3
            }
        }
        //var_dump($array);
        return $array;
    }
}