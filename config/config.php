<?php
return array(

	'session_in_sitepath' => 1,

'sn_user' => '',

'pagenum' => 3,
    
    // 调试模式
    'debug' => 0,
    
    // 授权码，多个授权码使用英文逗号隔开，如：'aaaaa,bbbbb'
    'sn' => 'DDF26FF0D8,3E96EEC80A',
    
    // 设置URL模式,1、基本模式,2、伪静态模式
    'url_type' => 2,
    
    // 模板内容输出缓存开关
    'tpl_html_cache' => 0,
    
    // 模板内容缓存有效时间（秒）
    'tpl_html_cache_time' => 900,
    
    // 访问页面规则，如禁用浏览器、操作系统类型
    'access_rule' => array(
        'deny_bs' => 'MJ12bot,IE6,IE7,Bytespider'
    ),
    
    // 上传配置
    'upload' => array(
        'format' => 'jpg,jpeg,png,gif,xls,xlsx,doc,docx,ppt,pptx,rar,zip,7z,pdf,txt,mp4,avi,flv,rmvb,mp3',
        'max_width' => '1920',
        'max_height' => ''
    ),
    
    // 缩略图配置
    'ico' => array(
        'max_width' => '1000',
        'max_height' => '1000'
    ),
    
    // 模块模板路径定义
    'tpl_dir' => array(
        'home' => '/template'
    ),
	
	
	// 默认分页大小
    'pagesize' => 15,
	



);
 