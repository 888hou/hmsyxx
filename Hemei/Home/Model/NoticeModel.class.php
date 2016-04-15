<?php
namespace Home\Model;
use Think\Model;
class NoticeModel extends Model {
    public function getNotice(){
        $where = array();
        $where['status'] = 1;
        $where['top'] = 0;
        $limit = 20;
        $data = M('Notice')->where($where)->order('oid ASC')->limit($limit)->select();
        return $data;
    }
    public function getTopNotice(){
        $where = array();
        $where['status'] = 1;
        $where['top'] = 1;
        $data = M('Notice')->where($where)->order('oid ASC,id DESC')->find();
        return $data;
    }
}