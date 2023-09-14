/**
 * 通用模块
 *
 */
var $win = $(window),
    $doc = $(document),
    $body = $('body', $doc),
    winW = $win.width();

$(window).resize(function() {
    winW = $win.width();
})


/**
 * 图片加载
 */
$(function() {
    if (!$.fn.lazyload) return;
    $(".lazy", $body).lazyload({
        effect: "fadeIn",
        threshold: 200,
        failure_limit: 0
    });
});
// 出现
$(function() {
    if ($win.width() > 992) {
        if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
            new WOW().init();
        };
    }

});

// 导航固定
$(function() {
    var sticky = new Waypoint.Sticky({
        element: $('.top-nav')[0]
    });
});

// 数字滚动
// $(function() {
//     $('.counter').countUp();
// });


$(function() {
    $(window).on("scroll", function() {
        var t = document.documentElement.scrollTop || document.body.scrollTop; //获取滚动距离
        if (screen.width > 0) {
            if (t >= 100) { //判断
                $(".header").addClass("fixed-header");

                $(".fixed-course").addClass("fopen");

            } else {
                $(".header").removeClass("fixed-header");
                $(".fixed-course").removeClass("fopen");
            }
        }
    })
});


$(function() {
    var $biger = $('.wrap-news-show .text');
    var num = parseFloat($biger.css('fontSize'));
    $('.switcher-bigger').click(function() {
        num = num * 1.1;
        $biger.css('fontSize', num + 'px');
    });
    $('.switcher-small').click(function() {
        num = num / 1.1;
        $biger.css('fontSize', num + 'px');
    });
});
// 导航滑动
$(function() {
    var jCate = $('.category ul', $body);
    var wrap = $('.category');
    var wrapWidth = wrap.width();
    if (jCate.width() < wrap.width()) {
        jCate.width("100%");
    } else {
        jCate.on('click', 'a', function(event) {
            event.preventDefault();
            event.stopPropagation();
            console.log(this.href);
            location.href = this.href;
        });

        jCate.on('touchstart', function(event) {
            jCate.addClass('touchstart');
            var touch = event.originalEvent.targetTouches[0];
            var data = {
                'touchX': touch.pageX,
                'width': jCate.width(),
                'left': parseInt(jCate.css('left')),
                'wwidth': wrapWidth
            };

            if (data.width < data.wwidth) {
                return true;
            }

            jCate.on('touchmove', data, touchMove);
            jCate.on('touchend', touchEnd);
        });
    }


    //  TAB 滑动
    var touchMove = function(event) {
        event.preventDefault();

        var touch = event.originalEvent.targetTouches[0];
        var touchX = touch.pageX;

        var incr = touchX - event.data.touchX;
        var left = event.data.left + incr;

        if (left > 0) {
            left = 0;
        } else if ((event.data.wwidth - left) > event.data.width) {
            left = event.data.wwidth - event.data.width;
        }

        jCate.css('left', left);
    };

    var touchEnd = function(event) {
        jCate.removeClass('touchstart');
        jCate.off('touchmove', touchMove);
        jCate.off('touchend', touchEnd);
    };


    /**
     * init-pos
     */
    (function() {
        var width = jCate.find('.active').width();
        var offset = jCate.find('.active').offset();

        var winWidth = $win.width();
        var cateWidth = jCate.width();

        // ($win - jCate) < left < 0
        if (offset && cateWidth > winWidth) {
            var left = winWidth / 2 - (offset.left + width / 2);
            left = Math.min(left, 0);
            left = Math.max(left, winWidth - cateWidth);
            jCate.css('left', left);
        }
    })();
});


// 视频
$(function() {
    var $box = $(".video", $body);
    if (!$box.length) return;

    $box.on('click', '.video-box .play', function(event) {
        event.preventDefault();
        var me = $(this);

        var $iframe = me.next('.iframe'),
            url = $iframe.data('src');

        if ($win.width() > 1200) {
            $.fancybox.open({
                src: url,
                type: 'iframe',
                padding: 10,
            });
        } else {
            var height = me.find('.img-responsive').length ? me.height() : $box.height();
            height = Math.max(height, 170);
            if (!$iframe.attr('src')) $iframe.attr('src', url);
            $iframe.height(height);
            $iframe.css('display', 'block');
            me.hide();
        }
    });
});

//头部导航
$(function() {
    //折叠导航
    var oset;
    $(".nav-collapse").click(function(e) {

        if (e && e.stopPropagation) {
            e.stopPropagation();
        } else {
            window.event.cancelBubble = true;
        }
        $(".nav-collapse").toggleClass("active");

        $(".nav").stop().fadeToggle().toggleClass("fade-out");
        $("body").toggleClass("fixed");
        $(".video-box").toggle();
        $(".nav").removeClass("left-100 left-200");
        if (winW > 991 && winW < 1200) {
            $(".nav-list1 .more").eq(0).addClass("show").children(".nav-list2").show();

        }
        if (!$(this).hasClass("active")) {
            $(".nav").hide();
            $(".nav-list1").find("li").removeClass("act");
        } else {
            if (winW > 991 && winW < 1200) {
                var listMore = $(".nav-list1 .more");
                listMore.removeClass("show").children(".nav-list2").hide();
                listMore.eq(0).addClass("show").children(".nav-list2").fadeIn();
            }
            clearTimeout(oset);
            $(".nav-list1 >li").each(function(index, val) {
                var me = $(this);
                var num = $(this).index()
                oset = setTimeout(function() {
                    me.addClass("act");
                }, (index * 55))
            })
        }
    });

});

$(function() {

    var list1 = $(".nav-list1"),
        list2 = $(".nav-list2"),
        list3 = $(".nav-list3");
    list1.on("click", ".more", function(event) {
        if (winW > 1199) return;
        event.stopPropagation();
        event.preventDefault();
        $(".nav").addClass("left-100");
        var ostr = "";
        ostr = $(this).children(".nav-list2").html();
        ohref = $(this).children("a").clone(true);
        $(".nav-2 .content ul").html(ostr).children("li").has(".nav-list3").addClass("more");
        $(".nav-2 h2").html(ohref);

    })
    $(".nav2-list2").on("click", "li", function(event) {
        if (winW > 1199) return;
        event.stopPropagation();
        if ($(this).hasClass("more")) {
            event.preventDefault();
            $(".nav").addClass("left-200");
            var ostr = "";
            ostr = $(this).children(".nav-list3").html();
            ohref = $(this).children("h4").children("a").clone(true);
            console.log($(this).children("h4 a"));
            $(".nav-3 .content ul").html(ostr);
            $(".nav-3 h2").html(ohref);
        }
    })

    list1.on("mouseenter", ".more", function(event) {

        if (winW < 1200) return;
        var me2 = $(this).children(".nav-list2");
        me2
            .stop().slideDown("fast")
            .children("li").has(".nav-list3").addClass("more");

    }).on("mouseleave", ".more", function(event) {

        if (winW < 1200) return;
        $(this).children(".nav-list2").stop().slideUp("fast");

    })

    list2.on("mouseenter", "li", function(event) {
        if (winW < 1200) return;
        console.log($(this).children(".nav-list3"))
        $(this).children(".nav-list3").stop().slideDown("fast");
    }).on("mouseleave", "li", function(event) {
        if (winW < 1200) return;
        $(this).children(".nav-list3").stop().slideUp("fast");
    })

    $(".back-btn2").click(function() {
        $(".nav").removeClass("left-100");
    })
    $(".back-btn3").click(function() {
        $(".nav").removeClass("left-200");
    })
    //查找按钮
    $(".find").click(function(e) {
        if (e && e.stopPropagation) {
            //W3C取消冒泡事件
            e.stopPropagation();
        } else {
            //IE取消冒泡事件
            window.event.cancelBubble = true;
        }
        $(".search-lg").stop().fadeIn();
        $(".input-text").focus();
        // $("body").addClass('searchactive');
        if (winW < 1200) {
            $("#btn").removeClass("active");
        }
    })

    $(".search-icon").click(function() {
        if (winW < 1200) {
            $(".search-xs").addClass("show")
        }
    })
    $(".nav").click(function(e) {
        if (!$(e.target).hasClass("input-text") && !$(e.target).hasClass("search-icon")) {
            console.log(e.target);
            $(".search-xs").removeClass("show")
        }
    })

    $(".close-btn").click(function() {
        $(".search-lg").fadeOut("fast");
        $("body").removeClass('searchactive');
    })


});


//首页 banner
$(function() {

    if (!$.fn.slick) return;
    $('.slickbanner').slick({
        autoplay: true,
        autoplaySpeed: 3000, //以毫秒为单位的自动播放速度
        centerMode: true, //居中视图   slidesToShow为双数的时候慎用
        centerPadding: '0px', //左右两侧padding值
        arrows: false, //上一下，下一页
        fade: true, //启用淡入淡出
        dots: true, //显示点指示符
        speed: 500, //幻灯片/淡入淡出动画速度
        cssEase: 'ease', //CSS3动画缓和
        slidesToShow: 1, //显示的幻灯片数量
        slidesToScroll: 1, //要滚动的幻灯片数量
        focusOnSelect: true, //启用选定元素的焦点（单击）
        touchThreshold: 300, //滑动切换阈值，即滑动多少像素后切换
        infinite: true, //无限循环
        swipeToSlide: true, //允许用户将幻灯片直接拖动或滑动到幻灯片
        lazyLoad: 'ondemand', //接受'ondemand'或'progressive'<img data-lazy="img/lazyfonz1.png"/>
        variableWidth: false, //幻灯片宽度自适应
        adaptiveHeight: false, //自适应高度
        rows: 1, //将其设置为1以上将初始化网格模式。使用slidesPerRow设置每行应放置多少个幻灯片
        slidesPerRow: 1, //在通过行选项初始化网格模式时，这会设置每个网格行中的幻灯片数量
    });
});

// $(function() {
//     var blength = $(".banner .slick-dots li").length;
//     $(".to-num").text(blength);
// });


$(function() {

    if (!$.fn.slick) return;
    $('.slick-team').slick({
        autoplay: true,
        autoplaySpeed: 3000, //以毫秒为单位的自动播放速度
        // centerMode: true, //居中视图   slidesToShow为双数的时候慎用
        centerPadding: '0px', //左右两侧padding值
        arrows: true, //上一下，下一页
        fade: false, //启用淡入淡出
        dots: false, //显示点指示符
        speed: 500, //幻灯片/淡入淡出动画速度
        cssEase: 'ease', //CSS3动画缓和
        slidesToShow: 5, //显示的幻灯片数量
        slidesToScroll: 1, //要滚动的幻灯片数量
        focusOnSelect: true, //启用选定元素的焦点（单击）
        touchThreshold: 300, //滑动切换阈值，即滑动多少像素后切换
        // infinite: true, //无限循环
        swipeToSlide: true, //允许用户将幻灯片直接拖动或滑动到幻灯片
        lazyLoad: 'ondemand', //接受'ondemand'或'progressive'<img data-lazy="img/lazyfonz1.png"/>
        variableWidth: false, //幻灯片宽度自适应
        adaptiveHeight: false, //自适应高度
        rows: 1, //将其设置为1以上将初始化网格模式。使用slidesPerRow设置每行应放置多少个幻灯片
        slidesPerRow: 1, //在通过行选项初始化网格模式时，这会设置每个网格行中的幻灯片数量
        pauseOnHover: false,
        responsive: [{
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 2000,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 2000,
                }
            }
        ],
    });
});


// 浮动客服弹出二维码and缓冲回到顶部

$(function() {
    $('.online > .online-wechat').hover(function() {
        $('.online-wechat .erweima').stop(true, true).fadeIn();
    }, function() {
        $('.online-wechat .erweima').stop(true, true).fadeOut();
    });
    $('.online > .online-weixin').hover(function() {
        $('.online-weixin .erweima').stop(true, true).fadeIn();
    }, function() {
        $('.online-weixin .erweima').stop(true, true).fadeOut();
    });
    $('.online > .online-tel').hover(function() {
        $('.online-tel p').stop(true, true).fadeIn();
    }, function() {
        $('.online-tel p').stop(true, true).fadeOut();
    });
    $('.online > .online-whatsapp').hover(function() {
        $('.online-whatsapp p').stop(true, true).fadeIn();
    }, function() {
        $('.online-whatsapp p').stop(true, true).fadeOut();
    });
    $('#backtop,.backtop').click(function() {
        $("html, body").animate({
            scrollTop: 0
        }, 400);
    });
});



$(function() {
    $('.icon-online').click(function() {
        $('.online').toggleClass('active');
        $('.icon-online').toggleClass('icon');
    });
});



// 放大
$(function() {
    $("a[rel=fancybox-product]").fancybox({
        'overlayShow': true,
        'overlayColor': '#000',
        'overlayOpacity': 0.9,
        'opacity': 0.5,
        'transitionIn': 'elastic',
        'transitionOut': 'none',
        'titlePosition': 'over',
        'showCloseButton': false,
        'titleFormat': function(title, currentArray, currentIndex, currentOpts) {
            return '<span id="fancybox-title-over">' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + ' </span>';
        }
    });
});

(function() {
    var showMoreNChildren = function($children, n) {
        //显示某jquery元素下的前n个隐藏的子元素
        var $hiddenChildren = $children.filter(":hidden");
        var cnt = $hiddenChildren.length;
        for (var i = 0; i < n && i < cnt; i++) {
            $hiddenChildren.eq(i).show();
        }
        return cnt - n; //返回还剩余的隐藏子元素的数量
    }

    //对页中现有的class=showMorehandle的元素，在之后添加显示更多条，并绑定点击行为
    $(".showMoreNChildren").each(function() {
        var pagesize = $(this).attr("pagesize") || 12;
        var $children = $(this).children();
        if ($children.length > pagesize) {
            for (var i = pagesize; i < $children.length; i++) {
                $children.eq(i).hide();
            }

            $("<div class='showMorehandle' ><a href='javascript:;'>···</a></div>").insertAfter($(this)).click(function() {
                if (showMoreNChildren($children, pagesize) <= 0) {
                    //如果目标元素已经没有隐藏的子元素了，就隐藏“点击更多的按钮条”
                    $(this).hide();
                };
            });
        }
    });
})();


// $(function() {
//     var sl = $(".box-key .key .pic").height();
//     $(".box-key .key .pic .back").height(sl);
//     $(".box-key .key .pic .front").height(sl);
// });


function doheight() {
    var sl = $(".box-recommend .item").height();
    $(".box-recommend .item-1").height(sl);

}
$(window).load(doheight);
$(window).resize(doheight);


// 瀑布流
// jQuery(document).ready(function($) {
//     $(".waterfall").mpmansory({
//         childrenClass: 'item', // default is a div
//         columnClasses: 'padding', //add classes to items
//         breakpoints: {
//             lg: 4,
//             md: 6,
//             sm: 6,
//             xs: 12
//         },
//         distributeBy: { order: false, height: false, attr: 'data-order', attrOrder: 'asc' }, //default distribute by order, options => order: true/false, height: true/false, attr => 'data-order', attrOrder=> 'asc'/'desc'
//         onload: function(items) {
//             //make somthing with items
//         }
//     });
// });
//详情页切换
$(function() {

    if (!$.fn.slick) return;

    $('.wrap-case-show .slider-for').slick({
        autoplay: 3000,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: false,
        infinite: false,
        centerMode: false,
        touchThreshold: 300,
        asNavFor: '.wrap-case-show .slider-nav'
    });

    var sliderNav = $('.wrap-case-show .slider-nav');

    sliderNav.slick({
        autoplay: 3000,
        slidesToShow: 4,
        slidesToScroll: 1,
        infinite: false,
        centerMode: false,
        centerPadding: '0px',
        asNavFor: '.wrap-case-show .slider-for',
        dots: false,
        arrows: true,
        touchThreshold: 300,
        focusOnSelect: true,


    });

    // var set = null;
    // sliderNav.on("mouseenter", ".slick-slide", function() {
    //     clearTimeout(set);
    //     var _this = $(this);
    //     set = setTimeout(function() {
    //         _this.trigger("click");
    //         console.log(1111)
    //     }, 10);
    // });
});
$(function() {
    $(".inquiry-btn").on("click", function() {
        $("html,body").animate({
            scrollTop: $("#inquiry-form").offset().top - 100
        }, 500)
    })
});


$(function() {
    $('.box-product .pro-sort li').mouseover(function() {
        var liindex = $('.box-product .pro-sort li').index(this);
        $(this).addClass('active').siblings().removeClass('active');
        $('.box-product .product').eq(liindex).show().siblings('.box-product .product').hide();
    }).eq(0).mouseover();
});
$(function() {
    $('.box-news .news-sort li').mouseover(function() {
        var liindex = $('.box-news .news-sort li').index(this);
        $(this).addClass('active').siblings().removeClass('active');
        $('.box-news .news').eq(liindex).show().siblings('.box-news .news').hide();
    }).eq(0).mouseover();
});


$(function() {
    $('.wrap-service .service ul li').mouseover(function() {
        var liindex = $('.wrap-service .service ul li').index(this);
        $(this).addClass('active').siblings().removeClass('active');
        $('.wrap-service .service .item .pic').eq(liindex).show().siblings('.wrap-service .service .item .pic').hide();
    }).eq(0).mouseover();
});

// 表格
$(function() {
    var oTable = $("table");
    if (oTable.length !== 0) {
        var oTr = oTable.find('tr'),
            oTd = oTable.find('td');

        oTable.wrap("<div class='table-box'></div>");

        oTr.attr("style", "");

        oTd.each(function(index) {
            if (typeof($(this).attr("style")) !== "undefined") {

                if ($(this).attr("style").indexOf("text-align: center") >= 0) {
                    $(this).attr("style", "text-align: center");
                } else {
                    $(this).attr("style", "");
                }

            }
        })

    }
});

$(function() {
    if (!placeholderSupport()) { // 判断浏览器是否支持 placeholder
        $('[placeholder]').focus(function() {
            var input = $(this);
            if (input.val() == input.attr('placeholder')) {
                input.val('');
                input.removeClass('placeholder');
            }
        }).blur(function() {
            var input = $(this);
            if (input.val() == '' || input.val() == input.attr('placeholder')) {
                input.addClass('placeholder');
                input.val(input.attr('placeholder'));
            }
        }).blur();
    };
})

function placeholderSupport() {
    return 'placeholder' in document.createElement('input');
}

$(".smooth").click(function() {
    var href = $(this).attr("href");
    var pos = $(href).offset().top - 100;
    $("html,body").animate({ scrollTop: pos }, 1000);
    return false;
});

$(".fixed-course .close-course").click(function() {
    $(".fixed-course").hide();
});


$(".wrap-job .job .list>ul>li .tlist .titem p .more").click(function() {
    var par = $(this).parent().parent().parent().parent();
    if (par.attr("class") == "on") {
        $(".wrap-job .job .list>ul>li .tlist .titem p .more").parent().parent().parent().parent().parent().addClass("on").find('.note').slideUp();
        par.find('.note').slideDown();
        par.removeClass("on").addClass("current").siblings().removeClass('current');
    } else {
        par.find('.note').slideUp();
        par.addClass("on").removeClass("current");
    }

});

$(function() {
    //获取所有div的高度，存入allDivHeight
    if ($win.width() > 767) {
        var allDivHeight = [];
        $(".wrap-service .service ul li .item").each(function(index, element) {
            allDivHeight.push($(this).height());
        });
        //循环分组和设置最大高度
        for (var j = 0; j < Math.ceil(allDivHeight.length / 4); j++) {
            var group = allDivHeight.slice(j * 4, 4 * (j + 1)); //每4个为一组
            var maxGroupHeight = Math.max.apply(null, group); //该组中最大的
            //设置该组中所有div的高度为最大高度(这里比较烂，没想到好方法)
            $(".wrap-service .service ul li .item").each(function(index, element) {
                if (j * 4 <= index && index <= 4 * (j + 1)) {
                    $(this).height(maxGroupHeight);
                }
                // console.log(maxGroupHeight);
            });
        }
    }

});
$(function() {
    if ($win.width() > 767) {
        //获取所有div的高度，存入allDivHeight
        var allDivHeight = [];
        $(".box-service .itemheight").each(function(index, element) {
            allDivHeight.push($(this).height());
        });
        //循环分组和设置最大高度
        for (var j = 0; j < Math.ceil(allDivHeight.length / 8); j++) {
            var group = allDivHeight.slice(j * 8, 8 * (j + 1)); //每8个为一组
            var maxGroupHeight = Math.max.apply(null, group); //该组中最大的
            //设置该组中所有div的高度为最大高度(这里比较烂，没想到好方法)
            $(".box-service .itemheight").each(function(index, element) {
                if (j * 8 <= index && index <= 8 * (j + 1)) {
                    $(this).height(maxGroupHeight);
                }
                // console.log(maxGroupHeight);
            });
        }
    }

});



// 在线客服
$(function() {
    var code = $(".code-pic");
    $(".online .code").on("mouseenter", function() {
        if (winW > 991) {
            $(this).children(".mask").stop(true, true).fadeIn();
        } else {
            $(this).children(".code-pic").stop(true, true).fadeIn();
        }
    }).on("mouseleave", function() {
        if (winW > 991) {
            $(this).children(".mask").stop(true, true).fadeOut();
        } else {
            $(this).children(".code-pic").stop(true, true).fadeOut();
        }
    });
    code.on("mouseenter", function(e) {
        $(this).stop(true, true).fadeIn();
    }).on("mouseleave", function() {
        $(this).stop(true, true).fadeOut();
    });
    $(".online-wrap .btn").on("click", function() {
        $(this).toggleClass("active");
        $(".online").toggleClass("active");
    });
    //返回顶部按钮
    $("#gotop,.backtop").click(function() {
        $("html,body").animate({
            scrollTop: 0
        }, 500)
    })
    $(".icon-close").on("click", function() {
        $(this).parent().hide();

    })
})