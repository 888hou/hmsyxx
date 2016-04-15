<?php
/**
 * Created by PhpStorm.
 * User: Houang
 * Date: 2016/4/6
 * Time: 20:30
 */
  function cutTitle($str,$width,$dot='',$encode='utf-8'){
    return mb_strimwidth($str,0,$width,$dot,$encode);//###,0,40,'..','utf-8'
 }
//    {$data.job_title|mb_strimwidth=###,0,40,'..','utf-8'}
//}
?>