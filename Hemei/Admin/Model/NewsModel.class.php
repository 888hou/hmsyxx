<?php
namespace Home\Model;
use Think\Model;
class NewsModel extends Model {
    public function getNewsList($cid,$limit=15){
        $news = M('News'); // 实例化User对象

        $where = array();
        $where['status'] = 0;
        $where['cid'] = $cid;

        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $list = $news->where($where)->order('oid DESC,posttime ASC')->page(I('get.p').','.$limit)->select();

        $count      = $news->where($where)->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,$limit);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $data = array();
        $data['list'] = $list;
        $data['page'] = $show;

		return $data;
    }
	public function getIndexNewsList($cid,$start,$limit){
        $news = M('News'); // 实例化User对象
        $where = array();
        $where['status'] = 0;
        $where['cid'] = $cid;
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $list = $news->where($where)->order('oid DESC,posttime ASC')->limit($start.','.$limit)->select();
        return $list;
    }
    public function getTopNews($cid){
        $news = M('News'); // 实例化User对象
        $where = array();
        $where['cid'] = $cid;
        $where['status'] = 0;
        $news_top = $news->where($where)->order('oid DESC')->find();
        return $news_top;
    }
	public function getNews($id){
		$news = M('News'); // 实例化User对象
		$where = array();
        $where['id'] = $id;
		$news_content = $news->where($where)->find();
		return $news_content;
	}
}