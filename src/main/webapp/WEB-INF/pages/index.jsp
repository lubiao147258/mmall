<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/common.jsp" %>
<html>
<head>
    <script src="${basePath}/resources/js/mmall.js"></script>
    <link rel="shortcut icon" href="${basePath}/resources/images/favicon_logo.ico">
    <title>首页——MMall电商平台</title>
    <link href="https://res8.vmallres.com/20180305/css/echannel/ec.core.base.min.css?20170722" rel="stylesheet" type="text/css">
    <link href="https://res8.vmallres.com/20180305/css/echannel/index.min.css?20170320" rel="stylesheet" type="text/css">
    <script src="https://res10.vmallres.com/20180305/js/??/common/jsapi.js,/common/base/jquery-1.4.4.min.js,/common/ec.core.js,/echannel/ec.business.min.js,/echannel/base.min.js,/echannel/slider.min.js,/echannel/swiper.min.js"
            namespace="ec"></script>
</head>

<body class="wide">

<img src="https://res.vmallres.com/20180305/images/echannel/icon-common.png" class="hide">
<div class="shortcut">
    <div class="layout">
        <div class="s-sub">
        </div>
        <div class="s-main ">
            <img src="https://res.vmallres.com/20180305/images/echannel/bg/bg71.png" class="hide">
            <ul>
                <li id="unlogin_status">
                    <div id="top_unlogin" class="header-toolbar">
                        <!-- 2017-02-15-头部-工具栏-焦点为header-toolbar-item增加ClassName:hover -->
                        <div class="header-toolbar-item">
                            <div class="i-login">
                                <div class="h">
                                    <div class="">
                                        <c:if test="${empty CURRENT_USER}">
                                            <script>document.write('<a id="top-index-loginUrl" href="${basePath}/login" rel="nofollow">请登录</a>');</script>
                                            <a href="${basePath}/register" rel="nofollow" >&nbsp;&nbsp;注册</a>
                                        </c:if>
                                        <c:if test="${not empty CURRENT_USER}">
                                            <a href="#" rel="nofollow" >&nbsp;&nbsp;欢迎你，${CURRENT_USER.username}</a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#" timeType="timestamp">我的订单</a>
                </li>
                <li>
                    <a href="#" class="icon-minicart" rel="nofollow" timeType="timestamp" target="blank" >
                        <span>购物车(<span id="header-cart-total">0</span>)</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="header">
    <div class="layout">
        <div class="left">
            <div class="logo" style="position: relative;">
                <a href="${basePath}/" title="mmall.com - mmall商城" style="position: absolute;left: -47px; top: -15px;">
                    <img src="${basePath}/resources/images/logo.png" alt="mmall.com - mmall商城" style="transform:scale(0.6);"/>
                </a>
            </div>

            <div class="naver">
                <ul class="clearfix">
                    <ul id="naver-list">
                        <c:forEach var="mainCategory" items="${categoryListVoList}">
                            <li>
                                <a href="#" onclick="goCategory(${mainCategory.id})">
                                    <span>${mainCategory.name}</span>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    <form id="hiddenForm" action="${basePath}/product/listByCategory" method="post" target="_blank">
                        <input type="hidden" name="categoryId" id="hiddenId" />
                    </form>
                    <script>
                        function goCategory(categoryId){
                            $("#hiddenId").val(categoryId);
                            $("#hiddenForm").submit();
                        }
                        $(function () {
                            $('#naver-list li').hover(function () {
                                $(this).addClass('hover');
                            }, function () {
                                $(this).removeClass('hover');
                            });
                        });
                    </script>
                </ul>
            </div>
        </div>

        <div class="right">
            <div class="search-bar relative" id="searchBar-area">
                <div class="search-bar-form" id="search-bar-form">
                    <form method="post" action="${basePath}/product/list.do">
                        <input type="text" class="text" name="keyword" maxlength="200" id="search-kw" autocomplete="off" placeholder="根据关键字搜索商品"/>
                        <input type="submit" class="button" value="搜索" />
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- 导航 -->
<div class="naver-main">
    <div class="layout">
        <div class="category category-index" id="category-block">
            <!-- 20170223-分类-start -->
            <div class="b">
                <ol class="category-list">
                    <!-- 鼠标悬停增加ClassName： hover -->
                    <c:forEach var="categoryItem" items="${categoryListVoList}">
                    <li id="zxnav_0" class="category-item " onmouseenter="showProList('zxnav_0')">
                        <div class="category-info">
                            <div>
                                <a href="#" onclick="goCategory(${categoryItem.id})"><span>${categoryItem.name}</span></a>
                            </div>
                            <c:forEach var="childCategoryItem" items="${categoryItem.categoryList}" begin="0" end="1" step="1">
                                <a href="#" onclick="goCategory(${childCategoryItem.id})"><span>${childCategoryItem.name}</span></a>
                            </c:forEach>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="#" onclick="goCategory(${categoryItem.id})">
                                    <span class="fl">浏览${categoryItem.name}频道</span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <c:forEach var="childCategoryItem" items="${categoryItem.categoryList}">
                                    <li class="subcate-item">
                                        <a href="#" onclick="goCategory(${childCategoryItem.id})" style="border-radius:1px;border:1px solid #cccccc;padding: 2px;margin-right: 15px;">
                                            <span>${childCategoryItem.name}</span>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                    </c:forEach>
                </ol>
            </div>

        </div>
    </div>
</div>
<script src="${basePath}/resources/js/mmall2.js"></script>

<div class="hot-board">
    <div class="ec-slider" id="index_slider">
        <ul>
            <li ID='firstImg' style="background:url('https://res.vmallres.com/pimages//sale/2018-04/20180425113736396c.jpg') 50% 0px no-repeat ;display: block;">
                <div style="width:100%;">
                    <img src="https://res.vmallres.com/pimages//sale/2018-04/20180425113736396c.jpg" style="display:none;" />
                    <a style="width:100%;height:450px;display:block;" href="#" ></a>
                </div>
            </li>
        </ul>
    </div>
    <script>
        ec.ready(function () {
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-04/2018042720354279.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-05/20180505234458446.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-05/20180507092731204.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-05/20180505231105938.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-05/20180506223136981.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-05/20180506223356928.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-05/20180504231142288.png') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"#\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);

            ec.load("ec.slider", {
                loadType: "lazy",
                callback: function () {
                    $("#index_slider").slider({
                        width: '100%', //必须
                        height: 450, //必须
                        style: 2,                    //1显示分页，2只显示左右箭头,3两者都显示
                        pause: 5000,           //间隔时间
                        auto: true,
                        minWidth: 1200,
                        showNumber: false,
                        circleBtn: true
                    });
                }
            });
        });

    </script>
    <!--ads end-->
</div>


<div class="event-float-layout">
    <div class="event-float">
        <div>
            <ul class="hover-list">
            </ul>
        </div>
    </div>
</div>





<!-- 2017-02-15-HOME GOOGLIST-start -->
<div class="home-channel-container relative">

    <div class="layout" id="lc_443595">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">手机</h2>

                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-36" target="_blank" onclick="pushFoolMsg('1','手机','/list-36')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <li class="grid-items grid-items-md ">
                            <a class="thumb" href="https://www.vmall.com/product/337476941.html" target="_blank" onclick="pushFoolAdvertMsg('1','手机','https://res0.vmallres.com/pimages//frontLocation/content/1268817/1521556239580.jpg','1521556239580.jpg','https://www.vmall.com/product/337476941.html')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/1268817/1521556239580.jpg" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/549981984.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'1','手机','679927681','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/1001010042611/428_428_1521279962509mp.jpg" alt="华为畅享7 Plus 4GB+64GB 全网通高配版（黑色）"
                                    />
                                </p>
                                <div class="grid-title">华为畅享7 Plus</div>
                                <p class="grid-desc">标配版领券立减100元&nbsp;</p>
                                <p class="grid-price">&yen;1499</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/205641589.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'1','手机','306136176','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/6901443170227/428_428_1488120174256mp.jpg" alt="HUAWEI P10 4GB+64GB 全网通版（钻雕蓝）"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI P10</div>
                                <p class="grid-desc">领券享优惠&nbsp;</p>
                                <p class="grid-price">&yen;3488</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/501317311.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'1','手机','13671525','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/6901443211944/428_428_1513560654770mp.jpg" alt="荣耀9青春版 全网通标配版（海鸥灰）"
                                    />
                                </p>
                                <div class="grid-title">荣耀9青春版</div>
                                <p class="grid-desc">限时优惠100&nbsp;</p>
                                <p class="grid-price">&yen;1099</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/98966557.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'1','手机','946775566','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/6901443170463-01/428_428_1488943698799mp.jpg" alt="HUAWEI P10 Plus 6GB+128GB 全网通版（曜石黑）"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI P10 Plus</div>
                                <p class="grid-desc">人像摄影大师&nbsp;</p>
                                <p class="grid-price">&yen;4488</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/478362844.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'1','手机','98670947','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/6901443204793/428_428_1514860379284mp.jpg" alt="荣耀畅玩7X 全网通标配版（极光蓝）"
                                    />
                                </p>
                                <div class="grid-title">荣耀畅玩7X</div>
                                <p class="grid-desc">最高优惠100&nbsp;</p>
                                <p class="grid-price">&yen;1249</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/315957963.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'1','手机','195288958','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/6901443201464/428_428_1505273765269mp.jpg" alt="HUAWEI 麦芒6 4GB+64GB 全网通版（极光蓝）"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI 麦芒6</div>
                                <p class="grid-desc">限时直降200&nbsp;</p>
                                <p class="grid-price">&yen;2199</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/84570258.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'1','手机','585113285','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res0.vmallres.com/pimages//product/6901443189182/428_428_1496991957745mp.jpg" alt="荣耀9 全网通标配版 4GB+64GB（海鸥灰）"
                                    />
                                </p>
                                <div class="grid-title">荣耀9</div>
                                <p class="grid-desc">最高优惠500元&nbsp;</p>
                                <p class="grid-price">&yen;1899</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="layout" id="lc_443603">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">笔记本电脑</h2>
                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-40" target="_blank" onclick="pushFoolMsg('2','笔记本电脑','/list-40')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <li class="grid-items grid-items-md ">
                            <a class="thumb" href="https://www.vmall.com/product/21046116.html" target="_blank" onclick="pushFoolAdvertMsg('2','笔记本电脑','https://res0.vmallres.com/pimages//frontLocation/content/1947317/1515425591000.jpg','1515425591000.jpg','https://www.vmall.com/product/21046116.html')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/1947317/1515425591000.jpg" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/889979598.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'2','笔记本电脑','607453401','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res1.vmallres.com/pimages//product/6901443179329/428_428_1495007640609mp.jpg" alt="（华为）HUAWEI MateBook E 12英寸时尚二合一笔记本电脑"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI MateBook E</div>
                                <p class="grid-desc">尊享6期免息&nbsp;</p>
                                <p class="grid-price">&yen;6888</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res1.vmallres.com/pimages//tag/75/1497575900592.png" alt="（华为）HUAWEI MateBook E 12英寸时尚二合一笔记本电脑"
                                    />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/417236260.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'2','笔记本电脑','227874837','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res1.vmallres.com/pimages//product/6901443181216/428_428_1495008740731mp.jpg" alt="（华为）HUAWEI MateBook X 13英寸轻薄笔记本电脑"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI MateBook X</div>
                                <p class="grid-desc">尊享6期分期免息&nbsp;</p>
                                <p class="grid-price">&yen;5988</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res1.vmallres.com/pimages//tag/75/1497575900592.png" alt="（华为）HUAWEI MateBook X 13英寸轻薄笔记本电脑"
                                    />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/965498680.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'2','笔记本电脑','300404050','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res1.vmallres.com/pimages//product/6901443195671/428_428_1506670584035mp.jpg" alt="（华为）HUAWEI MateBook 12英寸平板二合一笔记本电脑（Intel core m7 8GB内存 512GB存储  Win10 内含键盘、手写笔和扩展坞）香槟金"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI MateBook</div>
                                <p class="grid-desc">最高直降500元&nbsp;</p>
                                <p class="grid-price">&yen;7488</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="layout" id="lc_443591">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">智能穿戴</h2>
                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-59" target="_blank" onclick="pushFoolMsg('4','智能穿戴','/list-59')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <li class="grid-items grid-items-md ">
                            <a class="thumb" href="https://www.vmall.com/product/270976970.html" target="_blank" onclick="pushFoolAdvertMsg('4','智能穿戴','https://res0.vmallres.com/pimages//frontLocation/content/2440103/1510043740940.jpg','1510043740940.jpg','https://www.vmall.com/product/270976970.html')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/2440103/1510043740940.jpg" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/369652507.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'4','智能穿戴','860462675','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//product/6901443193073-01/428_428_1500340865479mp.jpg" alt="荣耀畅玩手环 A2（魅焰红）"
                                    />
                                </p>
                                <div class="grid-title">荣耀畅玩手环 A2</div>
                                <p class="grid-desc">今日优惠30元，领券更优惠&nbsp;</p>
                                <p class="grid-price">&yen;169</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/658947392.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'4','智能穿戴','354904425','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//product/6901443197828/428_428_1516188208906mp.jpg" alt="HUAWEI WATCH 2 华为第二代智能运动手表 蓝牙版（碳晶黑）"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI WATCH 2</div>
                                <p class="grid-desc">华为第二代智能运动手表&nbsp;</p>
                                <p class="grid-price">&yen;1688</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/993405255.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'4','智能穿戴','636006496','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//product/6901443183548/428_428_1496627716396mp.jpg" alt="荣耀手环3 标准版（活力橙）"
                                    />
                                </p>
                                <div class="grid-title">荣耀手环3</div>
                                <p class="grid-desc">限时最高降50元&nbsp;</p>
                                <p class="grid-price">&yen;179</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//tag/71/1497575814983.png" alt="荣耀手环3 标准版（活力橙）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/3487.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'4','智能穿戴','8735','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//product/6901443122974/428_428_1469093643984mp.jpg" alt="华为手环 B3 运动版（韵律黑）"
                                    />
                                </p>
                                <div class="grid-title">华为手环 B3</div>
                                <p class="grid-desc">蓝牙耳机与智能手环结合&nbsp;</p>
                                <p class="grid-price">&yen;999</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/184868333.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'4','智能穿戴','791219487','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//frontLocation/content/937161/1488161147740.png" alt="荣耀手表 S1" />
                                </p>
                                <div class="grid-title">荣耀手表 S1</div>
                                <p class="grid-desc">限时直降200元&nbsp;</p>
                                <p class="grid-price">&yen;499</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//tag/77/1497575918300.png" alt="荣耀手表 S1 表体（深空灰）+长腕带（黑色）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/798789671.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'4','智能穿戴','821498449','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//product/6901443190287/428_428_1498098860450mp.jpg" alt="华为运动手环 标准版（黑色）"
                                    />
                                </p>
                                <div class="grid-title">华为运动手环</div>
                                <p class="grid-desc">50米防水游泳&nbsp;</p>
                                <p class="grid-price">&yen;298</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/922041175.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'4','智能穿戴','86471537','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//product/3102170000201/428_428_1517392487068mp.jpg" alt="HUAWEI VR 2"
                                    />
                                </p>
                                <div class="grid-title">HUAWEI VR 2</div>
                                <p class="grid-desc">适配HUAWEI Mate 10系列&nbsp;</p>
                                <p class="grid-price">&yen;1999</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res3.vmallres.com/pimages//tag/79/1497575938261.png" alt="HUAWEI VR 2" />
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="layout" id="lc_443597">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">智能家居</h2>
                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-43" target="_blank" onclick="pushFoolMsg('5','智能家居','/list-43')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/202235028.html" target="_blank" onclick="pushFoolAdvertMsg('5','智能家居','https://res0.vmallres.com/pimages//frontLocation/content/957167/1521713311424.jpg','1521713311424.jpg','https://www.vmall.com/product/202235028.html')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/957167/1521713311424.jpg" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/129656917.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'5','智能家居','961348112','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443202461/428_428_1507606609600mp.jpg" alt="华为路由器WS5200（白色）"
                                    />
                                </p>
                                <div class="grid-title">华为路由WS5200</div>
                                <p class="grid-desc">支持5G信号智能优先选择&nbsp;</p>
                                <p class="grid-price">&yen;269</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//tag/87/1497576023361.png" alt="华为路由器WS5200（白色）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/611513952.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'5','智能家居','480239066','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443197071/428_428_1507545954611mp.jpg" alt="荣耀路由2（白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀路由2</div>
                                <p class="grid-desc">限时直降30元&nbsp;</p>
                                <p class="grid-price">&yen;219</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//tag/77/1497575918300.png" alt="荣耀路由2（白色）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/310439420.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'5','智能家居','190047935','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443187355/428_428_1495075512638mp.jpg" alt="华为随行WiFi 2（深灰色）"
                                    />
                                </p>
                                <div class="grid-title">华为随行WiFi 2</div>
                                <p class="grid-desc">4G全网通&nbsp;</p>
                                <p class="grid-price">&yen;499</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/23860218.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'5','智能家居','136877951','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443181803/428_428_1493972111510mp.jpg" alt="荣耀路由X1 增强版（白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀路由X1 增强版</div>
                                <p class="grid-desc">限时直降10元&nbsp;</p>
                                <p class="grid-price">&yen;139</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//tag/95/1497576073762.png" alt="荣耀路由X1 增强版（白色）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/515922308.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'5','智能家居','22571160','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443198368/428_428_1507605356006mp.jpg" alt="华为路由器WS5100（白色）"
                                    />
                                </p>
                                <div class="grid-title">华为路由器WS5100</div>
                                <p class="grid-desc">支持5G信号智能优先选择&nbsp;</p>
                                <p class="grid-price">&yen;159</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/538499714.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'5','智能家居','874932810','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/1268713/1500436144767.png" alt="华为子母路由器 Q1"
                                    />
                                </p>
                                <div class="grid-title">华为子母路由器 Q1</div>
                                <p class="grid-desc">双WiFi覆盖&nbsp;</p>
                                <p class="grid-price">&yen;599</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <%--<div id="goodsContent4" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="8">
                            <a class="thumb" href="/product/690174055.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443135615/428_428_1469695994751mp.jpg" alt="荣耀盒子Pro （白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀盒子Pro</div>
                                <p class="grid-desc">限时直降20元&nbsp; </p>
                                <p class="grid-price">&yen;399</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="9">
                            <a class="thumb" href="/product/746829270.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/2026809/1496281828441.jpg" alt="华为路由 WS318 增强版"
                                    />
                                </p>
                                <div class="grid-title">华为路由 WS318 增强版</div>
                                <p class="grid-desc">高性能双天线&nbsp; </p>
                                <p class="grid-price">&yen;99</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="/product/582146467.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//product/6901443176465/428_428_1500025136978mp.jpg" alt="荣耀路由X1（白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀路由X1</div>
                                <p class="grid-desc">限时直降10元&nbsp; </p>
                                <p class="grid-price">&yen;89</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="/product/190355030.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/1762521/1493696328524.png" alt="华为路由器A1 畅享版"
                                    />
                                </p>
                                <div class="grid-title">华为路由器A1 畅享版</div>
                                <p class="grid-desc">优选5G信号 Wifi自动加速&nbsp; </p>
                                <p class="grid-price">&yen;169</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="/product/1822.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/775335/1482233766254.png" alt="荣耀路由标准版" />
                                </p>
                                <div class="grid-title">荣耀路由标准版</div>
                                <p class="grid-desc">限时直降39元&nbsp; </p>
                                <p class="grid-price">&yen;149</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//tag/95/1497576073762.png" alt="荣耀路由 标准版（白色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="/product/3053.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/775339/1482233802925.png" alt="荣耀路由Pro" />
                                </p>
                                <div class="grid-title">荣耀路由Pro</div>
                                <p class="grid-desc">限时直降14元&nbsp; </p>
                                <p class="grid-price">&yen;314</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//tag/77/1497575918300.png" alt="荣耀路由Pro 大户型穿墙1200Mbps智能AC有线无线双千兆旗舰路由器（白色）"
                                    />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="/product/2380.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/775343/1484100325589.jpg" alt="华为WS832" />
                                </p>
                                <div class="grid-title">华为WS832</div>
                                <p class="grid-desc">1200M无线路由器&nbsp; </p>
                                <p class="grid-price">&yen;249</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//tag/77/1497575918300.png" alt="华为路由器WS832（白色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="/product/3061.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/775349/1482233776849.png" alt="荣耀WiFi穿墙宝" />
                                </p>
                                <div class="grid-title">荣耀WiFi穿墙宝</div>
                                <p class="grid-desc">限时最高降13元&nbsp; </p>
                                <p class="grid-price">&yen;255</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="https://www.vmall.com/product/1169.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/1268783/1489245789451.jpg" alt="华为 WS550" />
                                </p>
                                <div class="grid-title">华为 WS550</div>
                                <p class="grid-desc">双核450M路由器&nbsp; </p>
                                <p class="grid-price">&yen;169</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="/product/1168.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/1268807/1489246047722.jpg" alt="华为 WS331c" />
                                </p>
                                <div class="grid-title">华为 WS331c</div>
                                <p class="grid-desc">300Mbps 无线扩展器&nbsp; </p>
                                <p class="grid-price">&yen;119</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="18">
                            <a class="thumb" href="https://www.vmall.com/product/902.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res4.vmallres.com/pimages//frontLocation/content/1353073/1489753563752.jpg" alt="华为 PT500" />
                                </p>
                                <div class="grid-title">华为 PT500</div>
                                <p class="grid-desc">500M电力线适配器&nbsp; </p>
                                <p class="grid-price">&yen;139</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled">
                        <span></span>
                    </div>
                    <div class="grid-btn swiper-button-next btn-next">
                        <span></span>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>


    <div class="hr-20"></div>
</div>
<!-- 2017-02-15-HOME GOOGLIST-end -->

<div class="channel-floor">
    <div class="layout">
        <!-- 20130903-ad-762*132-start -->
        <div class="ad fl">

        </div>
        <!-- 20130903-ad-762*132-end -->
    </div>
    <div class="hr-60"></div>
</div>


<script src="${basePath}/resources/js/mmall3.js"></script>

<!-- 2017-02-15-悬浮工具栏-start -->
<div class="hungBar">
    <a href="#" class="hungBar-top fr" id="hungBar-top" title="返回顶部">
        <i>返回顶部</i>
    </a>
</div>
<!-- 2017-02-15-悬浮工具栏-end -->

<!--    提示框 start -->
<%@include file="../common/msgBox.jsp"%>
<!--    提示框 -->
</body>

</html>
