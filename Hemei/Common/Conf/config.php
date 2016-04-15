<?php
return array(

    //'配置项'=>'配置值'
	'URL_MODEL'=>'2',
    //'SHOW_PAGE_TRACE'=>true,
    'TMPL_PARSE_STRING'  =>array(
        '__THEMES__'     => '/Public/themes',    // 增加新的JS类库路径替换规则
        '__EUI__'        => '/Public/easyui/',    // 增加新的JS类库路径替换规则
        '__BOOTSTRAP__'  => '/Public/bootstrap-3.3.5-dist', // 增加新的JS类库路径替换规则
        '__JS__'         => '/Public/js/',   // 增加新的JS类库路径替换规则
        '__CSS__'        => '/Public/css/',  // 增加新的Css类库路径替换规则
        '__IMG__'        => '/Public/images/',     // 增加新的image类库路径替换规则
        '__UE__'         => '/Public/ueditor/',   //ueditor 路径替换
    ),
    //'配置项'=>'配置值'
    'COOKIE_PREFIX' => 'hemei_',
    //数据库配置信息
    'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'localhost', // 服务器地址
    'DB_NAME'   => 'hemei_cms', // 数据库名
    'DB_USER'   => 'hemei', // 用户名
    'DB_PWD'    => '', // 密码
    'DB_PORT'   => '3306', // 端口
    'DB_PREFIX' => 'hemei_', // 数据库表前缀
	'DB_CHARSET'=>  'utf8',      // 数据库编码默认采用utf8
	//备份配置
	'DB_PATH_NAME'=> 'db',        //备份目录名称,主要是为了创建备份目录
	'DB_PATH'     => './db/',     //数据库备份路径必须以 / 结尾；
	'DB_PART'     => '20971520',  //该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M
	'DB_COMPRESS' => '1',         //压缩备份文件需要PHP环境支持gzopen,gzwrite函数        0:不压缩 1:启用压缩
	'DB_LEVEL'    => '9',         //压缩级别   1:普通   4:一般   9:最高
	
	//'配置项'=>'配置值'
    'APP_STATUS' => 'debug', //应用调试模式状态
    //'DEFAULT_MODULE'     => 'Index', //默认模块
    //'URL_MODEL'          => '1', //URL模式
);