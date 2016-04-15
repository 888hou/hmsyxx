<?php
namespace Home\Model;
use Think\Model;
class CategoryModel extends Model {
    public function getCategoryList($nid){
        $where = array();
        $where['status'] = 1;
        $where['nid'] = $nid;
        $where['pid'] = 0;
        $data = M('Category')->where($where)->order('oid ASC')->select();
        return $data;
    }
    public function getCategoryChildList($pid){
        $where = array();
        $where['status'] = 1;
        $where['pid'] = $pid;
        $data = M('Category')->where($where)->order('oid ASC')->select();
        return $data;
    }
    public function getCategoryInfo($type,$id){
        if($type == 0){
            $where = array();
            $where['id'] = $id;
        }else{
            $where = array();
            $where['nid'] = $id;
        }
        $data = M('Category')->where($where)->order('oid ASC')->find();
        return $data;
    }
}