<?php
namespace Home\Model;
use Think\Model;
class SetsModel extends Model {
	public function getSetsList(){
		$sets = M('Sets'); // 实例化User对象
		$data = $sets->select();
        $ret = array();
        foreach($data as $key => $value){
            $ret[$value['name']] = $value['value'];
        }
		return $ret;
	}
}