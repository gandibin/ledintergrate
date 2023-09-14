<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>{sort:title}</title>
<meta name="keywords" content="{sort:keywords}">
<meta name="description" content="{sort:description}">
<link rel="stylesheet" href="{pboot:sitedomain}/skin/css/bootstrap.min.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="{pboot:sitedomain}/skin/css/animate.min.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="{pboot:sitedomain}/skin/css/jquery.fancybox.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="{pboot:sitedomain}/skin/css/slick.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="{pboot:sitedomain}/skin/css/style.css" type="text/css" media="screen" charset="utf-8">
</head>
<style>
.site a::before {
	content: '' !important;
	width: 0 !important;
}
/*.site a{*/
        /*margin: 0;*/
        /*text-align: center;*/
        /*line-height: 45px;*/
    /*}*/
.header .top .share ul li a {
	text-align: center;
	line-height: 45px;
}
.header .top .share ul li a img {
	margin-right: 3px;
}
.header-container {
	position: relative;
}
 @media (min-width: 1200px) {
.header .nav {
	position: absolute;
	right: 4%;
}
}
.last-a {
	padding-right: 0 !important;
}
 @media (max-width: 1349px) {
.header .nav {
	right: 0;
}
}
</style>

<body>
<div class="header">
  <div class="top">
    <div class="container">
      <p class="tel">TEL: {pboot:companyphone}</p>
      <p class="email">Email: {pboot:companyemail}</p>
      <div class="share">
        <ul>
          <li class="site"> <a href="{pboot:lgpath}&lg=cn"><img src="{pboot:sitedomain}/skin/images/vn.jpg" />ch</a> </li>
          <li class="site"> <a href="{pboot:lgpath}&lg=en"><img src="{pboot:sitedomain}/skin/images/en.jpg" />English</a> </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="top-nav">
    <div class="container header-container">
      <div class="logo"> <a href="{pboot:sitedomain}/"><img src="{pboot:sitelogo}" /></a> </div>
      <button class="nav-collapse nav-collapse-xs" id="nav-btn"> <span class="btn-line"></span> <span class="btn-line"></span> <span class="btn-line"></span> </button>
      <div class="nav nav-show">
        <div class="tbl">
          <div class="tbl-cell">
            <ul class="nav-list1">
              <li {pboot:if(0=='{sort:scode}')}class="active"{/pboot:if}> <a href="{pboot:sitedomain}/">网站首页</a> </li>
              {pboot:nav}
              <li class="{pboot:if('[nav:scode]'=='{sort:tcode}')}active{/pboot:if} {pboot:if([nav:soncount]>0)}more{/pboot:if}"><a href="[nav:link]">[nav:name]</a> {pboot:if([nav:soncount]>0)}
                <ul class="nav-list2">
                  {pboot:2nav parent=[nav:scode]}
                  <li><a href="[2nav:link]">[2nav:name]</a></li>
                  {/pboot:2nav}
                </ul>
                {/pboot:if} </li>
              {/pboot:nav}
            </ul>
          </div>
        </div>
        <button class="nav-collapse nav-collapse-1" id="nav-xs-btn"> <span class="btn-line"></span> <span class="btn-line"></span> <span class="btn-line"></span> </button>
        <div class="nav-2">
          <div class="nav-top">
            <div class="back-btn back-btn2"></div>
            <h2>Frist-degree Menu</h2>
            <button class="nav-collapse nav-collapse-2" id="nav2-btn"> <span class="btn-line"></span> <span class="btn-line"></span> <span class="btn-line"></span> </button>
          </div>
          <div class="content">
            <ul class="nav2-list2">
            </ul>
          </div>
        </div>
        <div class="nav-3">
          <div class="nav-top">
            <div class="back-btn back-btn3"></div>
            <h2>Frist-degree Menu</h2>
            <button class="nav-collapse nav-collapse-2" id="nav2-btn"> <span class="btn-line"></span> <span class="btn-line"></span> <span class="btn-line"></span> </button>
          </div>
          <div class="content">
            <ul class="nav3-list3">
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="banner banner-in banner-about">
  <div class="slickbanner">
    <div class="item"> <a class="img-box"> <img src="{pboot:sitedomain}/skin/picture/nybanner.jpg"  > </a>
      <div class="text-in">
        <div class="note wow fadeInUp" data-wow-duration=".8s"> <b>{sort:name}</b>
          <p>{sort:subname}</p>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="wrapper">
  <div class="wrap wrap-about">
    <div class="about">
      <div class="container">
        <div class="text wow fadeInUp" data-wow-duration=".8s" id="maximg"> {content:content} </div>
      </div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="container">
    <div class="link">
      <div class="title-foot"> <b>links</b> </div>
      <ul>
        {pboot:link  gid=1 num=50}
        <li> <a href="[link:link]" target="_blank">[link:name]</a> </li>
        {/pboot:link}
      </ul>
    </div>
    <div class="foot">
      <div class="fleft">
        <div class="title-foot"> <b>CONTACT US</b> </div>
        <div class="ftext">
          <ul>
            <li>
              <p class="tel">手机 : {pboot:companyphone}</p>
            </li>
            <li>
              <p class="email">邮箱 : <a href="mailto:{pboot:companyemail}">{pboot:companyemail}</a></p>
            </li>
            <li>
              <p class="tel">电话 : {pboot:companymobile}</p>
            </li>
            <li>
              <p class="fax">传真 : {pboot:companyfax}</p>
            </li>
            <li>
              <p class="address">地址 : {pboot:companyaddress}</p>
            </li>
          </ul>
        </div>
      </div>
      <div class="fright">
        <div class="share">
          <h4 class=""></h4>
          <ul>
            <li class="linkedin"> <img src="{pboot:companyweixin}" height="100" width="100"/> </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container">
      <p>{pboot:sitecopyright} <a href="https://beian.miit.gov.cn/" target="_blank" rel="nofollow">{pboot:siteicp}</a>  <a href="{pboot:sitedomain}/sitemap.xml" target="_blank">XML地图</a> {pboot:sitestatistical} <a href="http://www.ofym.com/" target="_blank">源码下载</a></p>
    </div>
  </div>
</div>
<div class="loadjs"> 
  <script src="{pboot:sitedomain}/skin/js/jquery-1.11.0.min.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/jquery.lazyload.min.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/jquery.carousel.min.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/jquery.fancybox.min.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/wow.min.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/slick1.9.js" type="text/javascript" charset="utf-8"></script> 
  <!-- ie8 bootstrap --> 
  <script src="{pboot:sitedomain}/skin/js/html5shiv.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/jquery.waypoints.all.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/respond.min.js" type="text/javascript" charset="utf-8"></script> 
  <script src="{pboot:sitedomain}/skin/js/sticky-sidebar.js" type="text/javascript" charset="utf-8"></script> 
  <script>
        if ($(window).width() > 991) {
            var a = new StickySidebar('#sidebar', {
                topSpacing: 80,
                bottomSpacing: 80,
                containerSelector: '.container',
                innerWrapperSelector: '.sidebar__inner',
            });
        }
    </script> 
  <script src="{pboot:sitedomain}/skin/js/main.js" type="text/javascript" charset="utf-8"></script> 
</div>
</body></html> 
<?php return array (
  0 => 'D:/phpstudy_pro/WWW/xingwei2.com/template/cn/head.html',
  1 => 'D:/phpstudy_pro/WWW/xingwei2.com/template/cn/nybanner.html',
  2 => 'D:/phpstudy_pro/WWW/xingwei2.com/template/cn/foot.html',
); ?>