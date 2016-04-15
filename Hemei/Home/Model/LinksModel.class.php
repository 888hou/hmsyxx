<?php
namespace Home\Model;
use Think\Model;
class LinksModel extends Model {
    public function getLinks(){
        $where = array();
        $where['status'] = 1;
        $limit = 16;
        $data = M('Links')->where($where)->order('oid ASC')->limit($limit)->select();
        return $data;
    }
}