<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>{pboot:sitetitle}</title>
<meta name="keywords" content="{pboot:sitekeywords}">
<meta name="description" content="{pboot:sitedescription}">
<meta name="author" content="www.ofym.com P359" />
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

<div class="banner" id="banner">
  <div class="slickbanner">
    {pboot:slide gid=1 num=6}
    <div class="item">
      <div class="img-box"><img src="[slide:src]" title="" alt="" /></div>
    </div>
    {/pboot:slide} 
  </div>
</div>
<div class="content">
  <div class="box-list">
    <div class="container">
      <div class="list">
        <ul>
          {pboot:sort scode=5}
          <li>
            <div class="item item-product wow fadeInUpBig" data-wow-duration=".6s" data-wow-delay="0s"> <b>产品</b>
              <p><a href="[sort:link]">木工机械，数控旋切板一体机，数控无卡旋切机，无卡旋切机，木材倒圆机，木材进料机。</a></p>
              <a class="more" href="[sort:link]">了解更多+</a> </div>
          </li>
          {/pboot:sort}
          
          {pboot:sort scode=1}
          <li>
            <div class="item item-quality wow fadeInUpBig" data-wow-duration=".6s" data-wow-delay="0.3s"> <b>质量</b>
              <p><a href="[sort:link]">公司拥有完整科学的质量管理体系。它是中国最大的大型木工旋切机制造商之一。</a></p>
              <a class="more" href="[sort:link]">了解更多+</a> </div>
          </li>
          {/pboot:sort}
          
          {pboot:sort scode=1}
          <li>
            <div class="item item-service wow fadeInUpBig" data-wow-duration=".6s" data-wow-delay="0.6s"> <b>服务</b>
              <p><a href="[sort:link]">本厂以“严格的管理，质量与世界同步；精心的制造，创新和领导，追求客户满意”为宗旨，为广大客户提供优质服务。</a></p>
              <a class="more" href="[sort:link]">了解更多+</a> </div>
          </li>
          {/pboot:sort}
        </ul>
      </div>
    </div>
  </div>
  <div class="box box-product">
    <div class="container"> {pboot:sort scode=5}
      <div class="title-product wow fadeInUp" data-wow-duration=".8s"> <b>[sort:name]</b>
        <p>[sort:subname]</p>
      </div>
      {/pboot:sort}
      <div class="product wow fadeInUp" data-wow-duration=".8s">
        <ul>
          {pboot:list scode=5 num=4 order=sorting}
          <li>
            <div class="item"> <a class="img-box" href="[list:link]"><img class="lazy" data-src="[list:ico]" width="790" height="480" title="[list:title]" alt="[list:title]" /></a> <a class="note" href="[list:link]"> <b>[list:title lencn=16]</b>
              <p>[list:ext_canshu drophtml=1 lencn=80]</p>
              <span>了解更多 +</span> </a> </div>
          </li>
          {/pboot:list}
        </ul>
      </div>
    </div>
  </div>
  <div class="box box-about">
    <div class="container">
      <div class="title-about wow fadeInUp" data-wow-duration=".8s"> <b>关于我们</b> </div>
      {pboot:content scode=1}
      <div class="about wow fadeInUp" data-wow-duration=".8s">
        <p>[content:content drophtml=1 lencn=280]</p>
      </div>
      <div class="more wow fadeInUp" data-wow-duration=".8s"> <a href="[content:link]">了解更多 +</a> </div>
      {/pboot:content} </div>
  </div>
  <div class="box box-news">
    <div class="container">
      <div class="title-news wow fadeInUp" data-wow-duration=".8s"> <b>新闻中心</b> </div>
      <div class="news">
        <div class="row"> {pboot:list scode=2 num=4 order=sorting}
          <div class="col-xs-6 col-md-3 list wow fadeInUp" data-wow-duration=".8s">
            <div class="item"> <b><a href="[list:link]">[list:title lencn=30]</a></b>
              <div class="pic"> <a class="img-box" href="[list:link]"><img class="lazy" data-src="[list:ico]" width="340" height="150" title="[list:title]" alt="[list:title]" /></a>
                <div class="date">
                  <h3>[list:date style=M]</h3>
                  <span>[list:date style=d,Y]</span> </div>
              </div>
              <p><a href="[list:link]">[list:description lencn=60]</a></p>
            </div>
          </div>
          {/pboot:list} </div>
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
  1 => 'D:/phpstudy_pro/WWW/xingwei2.com/template/cn/foot.html',
); ?>