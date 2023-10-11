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
              <li {pboot:if(0=='{sort:scode}')}class="active"{/pboot:if}> <a href="{pboot:sitedomain}/">HOME</a> </li>
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
    {pboot:slide gid=2 num=6}
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
          {pboot:sort scode=14}
          <li>
            <div class="item item-product wow fadeInUpBig" data-wow-duration=".6s" data-wow-delay="0s"> <b>PRODUCT</b>
              <p><a href="[sort:link]">Woodworking machinery, CNC rotary cutting board integrated machine, CNC non card rotary cutting machine, non card rotary cutting machine, wood rounding machine, wood feeding machine.</a></p>
              <a class="more" href="[sort:link]">learn  more +</a> </div>
          </li>
          {/pboot:sort}
          
          {pboot:sort scode=12}
          <li>
            <div class="item item-quality wow fadeInUpBig" data-wow-duration=".6s" data-wow-delay="0.3s"> <b>QUALITY</b>
              <p><a href="[sort:link]">The company has a complete and scientific quality management system. It is one of the largest manufacturers of large-scale woodworking rotary cutting machines in China.</a></p>
              <a class="more" href="[sort:link]">learn  more +</a> </div>
          </li>
          {/pboot:sort}
          
          {pboot:sort scode=17}
          <li>
            <div class="item item-service wow fadeInUpBig" data-wow-duration=".6s" data-wow-delay="0.6s"> <b>SERVICE</b>
              <p><a href="[sort:link]">The factory is "strict management, quality with the world; meticulous manufacturing, innovation and leadership, and strive for customer satisfaction" for the purpose of providing quality services to our customers.</a></p>
              <a class="more" href="[sort:link]">learn  more +</a> </div>
          </li>
          {/pboot:sort}
        </ul>
      </div>
    </div>
  </div>
  <div class="box box-product">
    <div class="container">
      <div class="title-product wow fadeInUp" data-wow-duration=".8s"> <b>Product Range</b>
        <p>Rotary cutting machine, CNC rotary cutting machine, CNC cardless rotary cutting machine, cardless rotary cutting machine</p>
      </div>
      <div class="product wow fadeInUp" data-wow-duration=".8s">
        <ul>
          {pboot:list scode=14 num=4 order=sorting}
          <li>
            <div class="item"> <a class="img-box" href="[list:link]"><img class="lazy" data-src="[list:ico]" width="790" height="480" title="[list:title]" alt="[list:title]" /></a> <a class="note" href="[list:link]"> <b>[list:title lencn=16]</b>
              <p>[list:ext_canshu drophtml=1 lencn=80]</p>
              <span>learn  more +</span> </a> </div>
          </li>
          {/pboot:list}
        </ul>
      </div>
    </div>
  </div>
  <div class="box box-about">
    <div class="container">
      <div class="title-about wow fadeInUp" data-wow-duration=".8s"> <b>about us</b> </div>
      {pboot:content scode=12}
      <div class="about wow fadeInUp" data-wow-duration=".8s">
        <p>[content:content drophtml=1 lencn=280]</p>
      </div>
      <div class="more wow fadeInUp" data-wow-duration=".8s"> <a href="[content:link]">Learn more +</a> </div>
      {/pboot:content} </div>
  </div>
  <div class="box box-news">
    <div class="container">
      <div class="title-news wow fadeInUp" data-wow-duration=".8s"> <b>news center</b> </div>
      <div class="news">
        <div class="row"> {pboot:list scode=13 num=4 order=sorting}
          <div class="col-xs-6 col-md-3 list wow fadeInUp" data-wow-duration=".8s">
            <div class="item"> <b><a href="[list:link]">[list:title lencn=30]</a></b>
              <div class="pic"> <a class="img-box" href="[list:link]"><img class="lazy" data-src="[list:ico]" width="340" height="150" title="[list:title]" alt="[list:title]" /></a>
                <div class="date">
                  <h3>[list:date style=M]</h3>
                  <span>[list:date style=d,Y]</span> </div>
              </div>
              <p><a href="[list:link]">[list:description lencn=100]</a></p>
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
              <p class="tel">Tel : {pboot:companyphone}</p>
            </li>
            <li>
              <p class="email">E-mail : <a href="mailto:{pboot:companyemail}">{pboot:companyemail}</a></p>
            </li>
            <li>
              <p class="tel">Phone : {pboot:companymobile}</p>
            </li>
            <li>
              <p class="fax">Fax : {pboot:companyfax}</p>
            </li>
            <li>
              <p class="address">Address : {pboot:companyaddress}</p>
            </li>
          </ul>
        </div>
      </div>
      <div class="fright">
        <div class="share">
          <h4 class="text-white">Share: </h4>
          <ul>
            <li class="facebook"> <a href="#" title="Share on Facebook" target="_blank">Facebook</a> </li>
            <li class="linkedin"> <a href="#" target="_blank" title="Share on LinkedIn">Linkedin</a> </li>
            <li class="twitter"> <a href="#" target="_blank" title="Tweet">Twitter</a> </li>
            <li class="youtube"> <a href="#" title="" target="_blank">Youtube</a> </li>
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
</body></html> <?php return array (
  0 => 'D:/phpstudy_pro/WWW/xingxing2.com/template/en/head.html',
  1 => 'D:/phpstudy_pro/WWW/xingxing2.com/template/en/foot.html',
); ?>