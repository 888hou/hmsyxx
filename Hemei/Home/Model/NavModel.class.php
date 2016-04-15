<?php
namespace Home\Model;
use Think\Model;
class NavModel extends Model {
    public function getNav(){
        $where = array();
        $where['status'] = 1;
        $where['type'] = 1;
        $limit = 7;
        $data = M('Nav')->where($where)->order('oid ASC')->limit($limit)->select();
        return $data;
    }
    public function getNavInfo($id){
        $where = array();
        $where['id'] = $id;
        $data = M('Nav')->where($where)->find();
        return $data;
    }
}