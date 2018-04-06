<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/common.jsp" %>
<html>
<head>
    <script>
        var domainYY = '//yy.vmall.com';
        var domainRush = '//buy.vmall.com';

        var domainEdit = 'https://customization.vmall.com';

        var domainMain = 'https://www.vmall.com';
        var domainWap = 'https://m.vmall.com';
        var domainCart = '//cart.vmall.com';
        var domainRemark = '//remark.vmall.com';
        var domainRms = 'https://rms.vmall.com';
        var domainShoppingConfig = '//addr.vmall.com';
        var imagePath = 'https://res.vmallres.com/20180305/images';
        var domainAccount = '//www.vmall.com';
        var isUseAccount = 'false';
        var upBindPhoneAddr = 'https://hwid1.vmall.com/oauth2/userCenter/bindAccount/bindMobileAccount_1.jsp?lang=zh-cn&amp;themeName=cloudTheme&amp;reqClientType=26';
        var dominWapRecycle = 'https://mobile.huishoubao.com/?pid=1056';
        var domainCds = 'https://cds.vmall.com';
        var domainIps = 'https://cashier.vmall.com/cashier/channel';
        var scriptPath = 'https://res9.vmallres.com/20180305/js';
        var domainAms = 'https://act.vmall.com';
        var domainUc = 'https://member.vmall.com';

        var pmsHttpDomain = '//product.vmall.com/';
    </script>

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
<!-- 2017-06-19-捷径栏-end -->

<!-- 2017-02-15-头部-start -->
<div class="header">
    <div class="layout">
        <div class="left">
            <!-- 2017-02-15-logo-start -->
            <div class="logo">
                <a href="#" title="mmall.com - mmall商城">
                    <img src="https://res.vmallres.com/pimages//common/config/logo/logo20170801113951.png" alt="mmall.com - mmall商城" />
                </a>
            </div>
            <!-- 2017-02-15-logo-end -->

            <!-- 2017-06-19-导航-start -->
            <div class="naver">
                <ul class="clearfix">
                    <ul id="naver-list">
                        <c:forEach var="mainCategory" items="${categoryListVoList}">
                            <li>
                                <a href="#" target="_blank">
                                    <span>${mainCategory.name}</span>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    <script>
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
            <!-- 2017-06-19-导航-end -->
        </div>

        <div class="right">
            <!-- 2017-02-15-搜索条-焦点为search-form增加className:hover -start -->
            <div class="search-bar relative" id="searchBar-area">
                <div class="search-bar-form" id="search-bar-form">
                    <form method="get" onsubmit="return search(this)">
                        <input type="text" class="text" maxlength="200" id="search-kw" autocomplete="off" placeholder="根据关键字搜索商品"/>
                        <input type="submit" class="button" value="搜索" />
                    </form>
                </div>

            </div>
            <!-- 2017-02-15-搜索条-end -->
        </div>
    </div>
</div>
<!-- 2017-02-15-头部-end -->

<!-- 导航 -->
<div class="naver-main">
    <div class="layout">
        <!-- 20130909-导航-start -->
        <!-- 20130909-导航-end -->
        <!-- 20140823-分类-start -->
        <div class="category category-index" id="category-block">
            <!-- 20170223-分类-start -->
            <div class="b">
                <ol class="category-list">
                    <!-- 鼠标悬停增加ClassName： hover -->
                    <c:forEach var="categoryItem" items="${categoryListVoList}">
                    <li id="zxnav_0" class="category-item " onmouseenter="showProList('zxnav_0')">
                        <div class="category-info">
                            <div>
                                <a href="#" target="_blank"><span>${categoryItem.name}</span></a>
                            </div>
                            <c:forEach var="childCategoryItem" items="${categoryItem.categoryList}" begin="0" end="1" step="1">
                                <a href="#" target="_blank"><span>${childCategoryItem.name}</span></a>
                            </c:forEach>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="#" target="_blank">
                                    <span class="fl">浏览${categoryItem.name}频道</span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <c:forEach var="childCategoryItem" items="${categoryItem.categoryList}">
                                    <li class="subcate-item">
                                        <a href="#" target="_blank" style="border-radius:1px;border:1px solid #cccccc;padding: 2px;margin-right: 15px;">
                                            <span>${childCategoryItem.name}</span>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                    </c:forEach>
                    <%--<li id="zxnav_1" class="category-item odd">
                        <input id="zxnav_1_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_1_name" type="hidden" autocomplete="off" value="笔记本 &amp; 平板">
                        <div class="category-info">
                            <div>
                                <a href="/list-40" target="_blank">
										<span>笔记本 &amp; 平板</span>
                                </a>
                            </div>
                            <a href="/list-41" target="_blank">
									<span>平板电脑</span>
                            </a>
                            <a href="/list-42" target="_blank">
									<span>笔记本电脑</span>
                            </a>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="/list-40" target="_blank">
                                    <span class="fl">浏览笔记本 &amp; 平板频道</span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="/list-41" target="_blank">
                                        <span>平板电脑</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-42" target="_blank">
                                        <span>笔记本电脑</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-317">
                                        <span>笔记本配件</span>
                                    </a>
                                </li>
                            </ul>

                            <div class="p-pro">
                                <input id="pro_size" type="hidden" value="7">
                                <ul id="zxnav_1_prolist" class="grid-list clearfix">
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/417236260.html" onclick="pushNavIndexProImgMsg('285603096','/product/417236260.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443181186/142_142_1495008446005mp.jpg"> </p>
                                            <div class="grid-title">HUAWEI MateBook X</div>
                                            <p class="grid-price">¥7988</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/516255415.html" onclick="pushNavIndexProImgMsg('553104015','/product/516255415.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443204526/142_142_1506671611280mp.jpg"> </p>
                                            <div class="grid-title">荣耀WaterPlay</div>
                                            <p class="grid-price">¥1799</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/889979598.html" onclick="pushNavIndexProImgMsg('607453401','/product/889979598.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443179329/142_142_1495007640609mp.jpg"> </p>
                                            <div class="grid-title">HUAWEI MateBook E</div>
                                            <p class="grid-price">¥6888</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/405225095.html" onclick="pushNavIndexProImgMsg('887012722','/product/405225095.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443182770/142_142_1494904534464mp.jpg"> </p>
                                            <div class="grid-title">荣耀畅玩平板2 9.6英寸</div>
                                            <p class="grid-price">¥949</p>
                                        </a>
                                    </li>
                                </ul>
                                <input id="zxnav_1_skuIds" type="hidden" value="285603096,553104015,607453401,887012722,">
                            </div>
                        </div>
                    </li>
                    <li id="zxnav_2" class="category-item " onmouseenter="showProList('zxnav_2')">
                        <input id="zxnav_2_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_2_name" type="hidden" autocomplete="off" value="智能穿戴">
                        <div class="category-info">
                            <div>
                                <a href="/list-59" target="_blank">
										<span>智能穿戴</span>
                                </a>
                            </div>
                            <a href="/list-241" target="_blank">
									<span>手环</span>
                            </a>
                            <a href="/list-247" target="_blank">
									<span>手表</span>
                            </a>
                            <a href="/list-329" target="_blank">
									<span>VR</span>
                            </a>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="/list-59" target="_blank">
                                    <span class="fl">浏览智能穿戴频道</span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="/list-241" target="_blank">
                                        <span>手环</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-247" target="_blank">
                                        <span>手表</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-329" target="_blank">
                                        <span>VR</span>
                                    </a>
                                </li>
                            </ul>

                            <div class="p-pro">
                                <input id="pro_size" type="hidden" value="7">
                                <ul id="zxnav_2_prolist" class="grid-list clearfix">
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/993405255.html" onclick="pushNavIndexProImgMsg('419942774','/product/993405255.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443183524/142_142_1496627594147mp.jpg"> </p>
                                            <div class="grid-title">荣耀手环3</div>
                                            <p class="grid-price">¥179</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/270976970.html" onclick="pushNavIndexProImgMsg('976288056','/product/270976970.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443204212/142_142_1507769117117mp.jpg"> </p>
                                            <div class="grid-title">HUAWEI WATCH 2 Pro</div>
                                            <p class="grid-price">¥2588</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/369652507.html" onclick="pushNavIndexProImgMsg('860462675','/product/369652507.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443193073-01/142_142_1500340865479mp.jpg"> </p>
                                            <div class="grid-title">荣耀畅玩手环 A2</div>
                                            <p class="grid-price">¥179</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/798789671.html" onclick="pushNavIndexProImgMsg('814138592','/product/798789671.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443190232/142_142_1498099225036mp.jpg"> </p>
                                            <div class="grid-title">华为运动手环</div>
                                            <p class="grid-price">¥388</p>
                                        </a>
                                    </li>
                                </ul>
                                <input id="zxnav_2_skuIds" type="hidden" value="419942774,976288056,860462675,814138592,">
                            </div>
                        </div>
                    </li>
                    <li id="zxnav_3" class="category-item odd" onmouseenter="showProList('zxnav_3')">
                        <input id="zxnav_3_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_3_name" type="hidden" autocomplete="off" value="智能家居">
                        <div class="category-info">
                            <div>
                                <a href="/list-43" target="_blank">
                                    <span>智能家居</span>
                                </a>
                            </div>
                            <a href="/list-45">
									<span>路由器</span>
                            </a>
                            <a href="/list-46" target="_blank">
									<span>电视盒子</span>
                            </a>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="/list-43" target="_blank">
                                    <span class="fl">浏览智能家居频道</span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="/list-45">
                                        <span>路由器</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-46" target="_blank">
                                        <span>电视盒子</span>
                                    </a>
                                </li>
                            </ul>

                            <div class="p-pro">
                                <input id="pro_size" type="hidden" value="7">
                                <ul id="zxnav_3_prolist" class="grid-list clearfix">
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/202235028.html" onclick="pushNavIndexProImgMsg('964803411','/product/202235028.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443202386/142_142_1507802394680mp.jpg"> </p>
                                            <div class="grid-title">荣耀分布式路由</div>
                                            <p class="grid-price">¥849</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/515922308.html" onclick="pushNavIndexProImgMsg('22571160','/product/515922308.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443198368/142_142_1507605356006mp.jpg"> </p>
                                            <div class="grid-title">华为路由WS5100</div>
                                            <p class="grid-price">¥159</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/611513952.html" onclick="pushNavIndexProImgMsg('480239066','/product/611513952.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443197071/142_142_1507545954611mp.jpg"> </p>
                                            <div class="grid-title">荣耀路由2</div>
                                            <p class="grid-price">¥219</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/538499714.html" onclick="pushNavIndexProImgMsg('874932810','/product/538499714.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443125050/142_142_1466837793098mp.jpg"> </p>
                                            <div class="grid-title">华为路由 Q1</div>
                                            <p class="grid-price">¥599</p>
                                        </a>
                                    </li>
                                </ul>
                                <input id="zxnav_3_skuIds" type="hidden" value="964803411,22571160,480239066,874932810,">
                            </div>
                        </div>
                    </li>
                    <li id="zxnav_4" class="category-item " onmouseenter="showProList('zxnav_4')">
                        <input id="zxnav_4_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_4_name" type="hidden" autocomplete="off" value="通用配件">
                        <div class="category-info">
                            <div>
                                <a href="/list-54" target="_blank">
										<span>通用配件</span>
                                </a>
                            </div>
                            <a href="/list-56" target="_blank">
									<span>移动电源</span>
                            </a>
                            <a href="/list-229" target="_blank">
									<span>耳机</span>
                            </a>
                            <a href="/list-55" target="_blank">
									<span>音箱</span>
                            </a>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="/list-54" target="_blank">
                                    <span class="fl">浏览通用配件频道</span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="/list-56" target="_blank">
                                        <span>移动电源</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-229" target="_blank">
                                        <span>耳机</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-55" target="_blank">
                                        <span>音箱</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-231" target="_blank">
                                        <span>自拍杆</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-58" target="_blank">
                                        <span>充电器</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-83" target="_blank">
                                        <span>U盘</span>
                                    </a>
                                </li>
                            </ul>

                            <div class="p-pro">
                                <input id="pro_size" type="hidden" value="7">
                                <ul id="zxnav_4_prolist" class="grid-list clearfix">
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/706470980.html" onclick="pushNavIndexProImgMsg('937100113','/product/706470980.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443158379/142_142_1484107261446mp.jpg"> </p>
                                            <div class="grid-title">华为10000mAh 移动电源 充电宝</div>
                                            <p class="grid-price">¥199</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/875753311.html" onclick="pushNavIndexProImgMsg('189161731','/product/875753311.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443174256/142_142_1489548822739mp.jpg"> </p>
                                            <div class="grid-title">荣耀xSport运动蓝牙耳机</div>
                                            <p class="grid-price">¥259</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/936223974.html" onclick="pushNavIndexProImgMsg('534967719','/product/936223974.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443207077/142_142_1512699241768mp.jpg"> </p>
                                            <div class="grid-title">华为智能体脂秤</div>
                                            <p class="grid-price">¥169</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/589623440.html" onclick="pushNavIndexProImgMsg('477732529','/product/589623440.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/GB3102030002101/142_142_1509064211648mp.jpg"> </p>
                                            <div class="grid-title">TYPE-C转HDMI连接线</div>
                                            <p class="grid-price">¥108</p>
                                        </a>
                                    </li>
                                </ul>
                                <input id="zxnav_4_skuIds" type="hidden" value="937100113,189161731,534967719,477732529,">
                            </div>
                        </div>
                    </li>
                    <li id="zxnav_5" class="category-item odd" onmouseenter="showProList('zxnav_5')">
                        <input id="zxnav_5_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_5_name" type="hidden" autocomplete="off" value="专属配件">
                        <div class="category-info">
                            <div>
                                <a href="/list-47" target="_blank">
										<span>专属配件</span>
                                </a>
                            </div>
                            <a href="/list-48" target="_blank">
									<span>保护壳/套</span>
                            </a>
                            <a href="/list-50" target="_blank">
									<span>贴膜</span>
                            </a>
                            <i class=""></i>
                        </div>
                        <div class="category-panels relative">
                            <div class="p-title">
                                <a class="clearfix" href="/list-47" target="_blank">
                                    <span class="fl">浏览专属配件频道</span>
                                    <span class="fr btn-next"> > </span>
                                </a>
                            </div>
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="/list-48" target="_blank">
                                        <span>保护壳/套</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="/list-50" target="_blank">
                                        <span>贴膜</span>
                                    </a>
                                </li>
                            </ul>

                            <div class="p-pro">
                                <input id="pro_size" type="hidden" value="7">
                                <ul id="zxnav_5_prolist" class="grid-list clearfix">
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/88509926.html" onclick="pushNavIndexProImgMsg('802846922','/product/88509926.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443197019/142_142_1508129455650mp.jpg"> </p>
                                            <div class="grid-title">HUAWEI Mate 10 手机导航套件</div>
                                            <p class="grid-price">¥199</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/730942535.html" onclick="pushNavIndexProImgMsg('70658365','/product/730942535.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443184019/142_142_1497318865289mp.jpg"> </p>
                                            <div class="grid-title">荣耀9 炫彩保护壳</div>
                                            <p class="grid-price">¥109</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/231549871.html" onclick="pushNavIndexProImgMsg('629113358','/product/231549871.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443199556/142_142_1509955269849mp.jpg"> </p>
                                            <div class="grid-title">HUAWEI Mate10 Pro 保护套</div>
                                            <p class="grid-price">¥299</p>
                                        </a>
                                    </li>
                                    <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                        <a class="thumb" target="_blank" href="/product/862627470.html" onclick="pushNavIndexProImgMsg('780670805','/product/862627470.html')">
                                            <p class="grid-img">
                                                <img alt="" src="https://res.vmallres.com/pimages//product/6901443208777/142_142_1512723338638mp.jpg"> </p>
                                            <div class="grid-title">荣耀V10 PU磁吸保护套</div>
                                            <p class="grid-price">¥119</p>
                                        </a>
                                    </li>
                                </ul>
                                <input id="zxnav_5_skuIds" type="hidden" value="802846922,70658365,629113358,309454040,">
                            </div>
                        </div>
                    </li>--%>
                </ol>
            </div>
            <!-- 20170223-分类-end -->

            <!-- 20140823-分类-end -->

        </div>
    </div>
</div>
<script>
    (function () {
        //获取二级菜单元素
        var $panels = $(".category-panels");
        //判断鼠标是否进入二级菜单
        var mouseInPanels = false;
        //用于存储鼠标移动过程中,开始位置和结束位置的数组
        var mouseTrach = [];
        var activeRow,  //选中的一级菜单
            activeMenu, //对应的右侧二级菜单
            timer;      //延时器

        $panels.live("mouseenter", function () {
            mouseInPanels = true;
        }).live("mouseleave", function () {
            mouseInPanels = false;
        });

        var moveHandler = function (e) {
            mouseTrach.push({
                x: e.pageX,
                y: e.pageY
            });
            if (mouseTrach.length > 2) {
                mouseTrach.shift();
            }
        };
        $('.category-item').each(function () {
            $(this).find('.category-panels').addClass('none');
        })
        $('.category-list').live('mouseenter', function () {
            $(document).bind("mousemove", moveHandler);
        }).live('mouseleave', function () {
            if (activeRow) {
                activeRow.removeClass("active");
                activeRow = null;
            }
            if (activeMenu) {
                activeMenu.addClass("none");
                activeMenu = null;
            }
            $(document).unbind("mousemove", moveHandler);
        });
        //鼠标进入每个li
        $('.category-item ').live('mouseenter', function (e) {
            if (!activeRow) {
                activeRow = $(this).addClass("active");
                activeMenu = $(this).find('.category-panels');
                activeMenu.removeClass("none");
            }
            if (timer) {
                clearTimeout(timer);
            }
            //当前鼠标位置坐标
            var curMouse = mouseTrach[mouseTrach.length - 1];
            //前面鼠标位置坐标
            var prevMouse = mouseTrach[mouseTrach.length - 2];
            var delay = needDelay($('.category-list'), curMouse, prevMouse);
            if (delay) {
                var $this = $(this);
                timer = setTimeout(function () {
                    if (mouseInPanels) {
                        return
                    }
                    if (activeRow && activeRow.hasClass('active')) {
                        activeRow.removeClass("active");
                    }
                    if (activeMenu) {
                        activeMenu.addClass("none");
                    }
                    activeRow = $this;
                    activeRow.addClass("active");
                    activeMenu = $this.find('.category-panels');
                    activeMenu.removeClass("none");
                    timer = null;
                }, 500);
            } else {
                var prevActiveRow = activeRow;
                var prevActiveMenu = activeMenu;
                activeRow = $(this);
                activeMenu = $(this).find('.category-panels');
                prevActiveRow.removeClass("active");
                prevActiveMenu.addClass("none");
                activeRow.addClass("active");
                activeMenu.removeClass("none");
            }
        });

        //所有分类显示隐藏控制
        var isIndex = true,
            categoryBlock = gid('category-block');

        if (isIndex) return;

        $("#category-block").hover(function () {
            $(this).addClass("category-hover");
        }, function () {
            $(this).removeClass("category-hover");
        });


    }());



    //显示导航右侧商品数据
    function showProList(id) {
        //查询标志
        var flag = $("#" + id + "_flag").val();
        var skuIds = $("#" + id + "_skuIds").val();

        var mediaPath = "https://res.vmallres.com/pimages/";
        //未查询过且有商品时才能执行
        if (skuIds != "" && flag == "no") {
            skuIds = skuIds.substring(0, skuIds.length - 1);
            var skuIdArr = skuIds.split(",");

            skuIdArr = removeDuplicatedItem(skuIdArr);

            //标记标志位
            $("#" + id + "_flag").val("yes");
            new ec.ajax().get({
                url: "/querySbomInfo.json?skuIdsStr=" + skuIds,
                async: true,//使用异步的Ajax请求
                timeout: 10000,
                successFunction: function (json) {
                    if (json.success) {
                        var infoMap = json.sbomInfoMap;
                        var html = '';
                        for (var i = 0; i < skuIdArr.length; i++) {
                            var skuId = skuIdArr[i];
                            var sbomInfo = json.sbomInfoMap[skuId];
                            if (sbomInfo != null) {
                                //商品图片URL
                                var imgPath = mediaPath + sbomInfo.photoPath + "142_142_" + sbomInfo.photoName;
                                //商品URL
                                var urlPath = "/product/" + sbomInfo.disPrdId + ".html";
                                //商品名称
                                //var proName = sbomInfo.sbomName;
                                var proName = $('#name_' + skuId).val();
                                var price;
                                //取得价格显示方式
                                var priceMode = sbomInfo.priceMode;
                                if (priceMode == 2 || sbomInfo.price == 0) {
                                    price = "暂无报价";
                                } else {
                                    price = "&yen;" + sbomInfo.price;
                                }
                                //一级分类导航名称
                                var oneNavName = $("#" + id + "_name").val();
                                var onShowName = "分类导航_" + oneNavName + "_" + sbomInfo.sbomCode;
                                //var clickContent="_paq.push(['trackLink','"+onShowName+"', 'link', ' ']);ec.code.addAnalytics({hicloud:true});";
                                html += '<li class="grid-items" onmouseenter="fixCurrent(this)"  onmouseleave="leaveCurrent(this)" >';
                                html += '     <a class="thumb" target="_blank" href="' + urlPath + '" onclick = "pushNavIndexProImgMsg(\'' + skuId + '\',\'' + urlPath + '\')">';
                                html += '         <p class="grid-img">';
                                html += '         	<img alt="" src="' + imgPath + '">';
                                html += '          </p>';
                                html += '          <div class="grid-title">' + proName + '</div>';
                                html += '          <p class="grid-price">' + price + '</p>';
                                //html += '          <p class="grid-tips"><img src="" alt=""></p>';
                                html += '       </a>';
                                html += '  </li>';
                            }
                        }
                        $("#" + id + "_prolist").html(html);
                    }

                }
            });
        }
    };
    function vector(a, b) {
        return {
            x: b.x - a.x,
            y: b.y - a.y
        }
    }

    function vectorPro(v1, v2) {
        return v1.x * v2.y - v1.y * v2.x;
    }

    /**
     *功能:判断两个值是否同正负
     *入参:两个number类型的值
     *出参:布尔值,同正负返回true,反之false
     */
    function sameSign(a, b) {
        return (a ^ b) >= 0;
    }

    /**
     *功能:判断p是否在三角形abc内
     *入参:p, a, b, c;p是需要判断的点，a,b,c是三角形的三个点，如果p在三角形内部，那么pa,pb,pc两个向量之间的差乘应该符号相同。（同正负）
     *出参:布尔值。如果p在a,b,c构成的三角形内,返回true,反之false
     */

    function isPoint(p, a, b, c) {
        var pa = vector(p, a);
        var pb = vector(p, b);
        var pc = vector(p, c);

        var t1 = vectorPro(pa, pb);
        var t2 = vectorPro(pb, pc);
        var t3 = vectorPro(pc, pa);

        return sameSign(t1, t2) && sameSign(t2, t3);
    }

    /**
     *功能:判断是正常切换一级菜单，还是需要延时
     *入参:鼠标滑入的DOM元素
     *出参:布尔值。需要延时返回true,正常切换一级菜单返回false
     */
    function needDelay(ele, curMouse, prevMouse) {
        if (!curMouse || !prevMouse) {
            return
        }
        var offset = ele.offset();
        var topleft = {
            x: offset.left + 240,
            y: offset.top
        };
        var leftbottom = {
            x: offset.left + 240,
            y: offset.top + ele.height()
        };
        return isPoint(curMouse, prevMouse, topleft, leftbottom);
    }


    //定位当前推荐商品
    function fixCurrent(obj) {
        $(obj).addClass('current');
    }

    //离开当前推荐商品
    function leaveCurrent(obj) {
        $(obj).removeClass('current');
    }
    //去重
    function removeDuplicatedItem(ar) {
        var ret = [];
        for (var i = 0, j = ar.length; i < j; i++) {
            if (ret.indexOf(ar[i]) === -1) {
                ret.push(ar[i]);
            }
        }
        return ret;
    }

    //商品分类纵向导航数据上报
    function pushNavIndexProMsg(name, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010501", "link", value]);
    }
    //商品分类纵向导航数据上报(图片)
    function pushNavIndexProImgMsg(skuId, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUID": skuId,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010601", "link", value]);
    }

    $("#category-block .category-info").find("a").click(function () {
        var name = $(this).find("span").html().trim();
        var url = $(this).attr("href");
        pushNavIndexProMsg(name, url);
    });

    $("#category-block .category-panels.relative").find("a").each(function () {
        $(this).bind('click', 'a', function () {
            var name = "";
            var src = "";
            var url = this.href;
            if ($(this).hasClass("clearfix")) {
                name = $(this).find(".fl").html().trim();
                pushNavIndexProMsg(name, url);
            }
            if ($(this).parent().attr("class") == "subcate-item") {
                name = $(this).find("span").html().trim();
                pushNavIndexProMsg(name, url);
            }
        })
    });


</script>
<!--双12 header增加背景图的 字体颜色改变-->
<!-- 20130904-热门板-start -->
<!--ads start-->
<div class="hot-board">
    <div class="ec-slider" id="index_slider">
        <ul>
            <li ID='firstImg' style="background:url('https://res.vmallres.com/pimages//sale/2018-03/20180320225838445c.jpg') 50% 0px no-repeat ;display: block;">
                <div style="width:100%;">
                    <img src="https://res.vmallres.com/pimages//sale/2018-03/20180320225838445c.jpg" style="display:none;" />
                    <a style="width:100%;height:450px;display:block;" href="https://sale.vmall.com/vmall318.html" target="_blank" onclick="pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180320225838445c.jpg','https://sale.vmall.com/vmall318.html','1')"></a>
                </div>
            </li>
        </ul>
    </div>
    <script>
        ec.ready(function () {
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180321120315867.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://sale.vmall.com/honor.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180321120315867.jpg','https://sale.vmall.com/honor.html',2);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180320225958321.png') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://www.vmall.com/product/10086151872147.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180320225958321.png','https://www.vmall.com/product/10086151872147.html',3);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180321181905802.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://www.vmall.com/product/10086883263315.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180321181905802.jpg','https://www.vmall.com/product/10086883263315.html',4);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180321175800193.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://sale.vmall.com/huawei.html      \" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180321175800193.jpg','https://sale.vmall.com/huawei.html      ',5);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180318231518445.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://www.vmall.com/product/570379791.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180318231518445.jpg','https://www.vmall.com/product/570379791.html',6);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180320193000942.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://www.vmall.com/product/135859985.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180320193000942.jpg','https://www.vmall.com/product/135859985.html',7);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi = document.createElement("li");
            imgLi.setAttribute("class", "ec-slider-item");
            imgLi.setAttribute("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180319143825851.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: none; position: absolute;");
            imgLi.innerHTML = "<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://www.vmall.com/product/501317311.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180319143825851.jpg','https://www.vmall.com/product/501317311.html',8);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);

            ec.load("ec.slider", {
                loadType: "lazy",
                callback: function () {
                    $("#index_slider").slider({
                        width: '100%', //必须
                        height: 450, //必须
                        style: 1,                    //1显示分页，2只显示左右箭头,3两者都显示
                        pause: 5000,           //间隔时间
                        auto: true,
                        minWidth: 1200,
                        showNumber: false,
                        circleBtn: true
                    });
                }
            });

            setTimeout(function () {
                $("#index_slider").children("ul").children("li").first().attr("class", "ec-slider-item");
                $("#index_slider").children("ul").children("li").first().attr("style", "background: url('https://res.vmallres.com/pimages//sale/2018-03/20180320225838445.jpg') 50% 0px no-repeat; ; width: 100%; height: 450px; display: block; position: absolute;");
                $("#index_slider").children("ul").children("li").first().html("<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:450px;display:block;\" href=\"https://sale.vmall.com/vmall318.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-03/20180320225838445.jpg','https://sale.vmall.com/vmall318.html','1')\"></a></div>");

            }, 7000);
        });

        //首页轮播数据上报
        function pushSliderMsg(adid, url, location) {
            var value = {
                "UID": ec.util.cookie.get("uid"),
                "TID": getPtid(),
                "TIME": getTime(),
                "CONTENT":
                    {
                        "ADID": adid,
                        "URL": url,
                        "location": location,
                        "click": "1"
                    }
            };
            ec.code.addAnalytics({ hicloud: true });
            _paq.push(["trackLink", "300010701", "link", value]);
        }
    </script>
    <!--ads end-->
</div>
<!-- 20130904-热门板-end -->

<!--//20161123 弹出框-->


<!-- 2017-02-15-菜单栏-start -->
<%--<div class="home-channel-menu" style="background:#f5f5f5;">
    <div class="layout relative">
        <div class="channel-floor-0 relative">


            <div></div>
        </div>
    </div>
    <div class="hr-10"></div>
</div>--%>
<!-- 2017-02-15-菜单栏-end -->

<!-- 20160812 首页轮播图下方 end -->


<div class="event-float-layout">
    <!--添加 fixed  position: fixed !important;top: 20px;z-index: 500;-->
    <div class="event-float">
        <div>
            <ul class="hover-list">
            </ul>
        </div>
    </div>
</div>


<!-- 2017-05-12-HOME right side navigation -start -->
<!-- 2017-05-12-HOME right side navigation -end -->


<!-- 2017-02-15-HOME GOOGLIST-start -->
<div class="home-channel-container relative">


    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 排除非4倍数的商品 -->
    <!-- 非对称式 asym_array -->

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
    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 非对称式 asym_array -->

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
    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_443605">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">精品平板</h2>
                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-40" target="_blank" onclick="pushFoolMsg('3','精品平板','/list-40')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <li class="grid-items grid-items-md ">
                            <a class="thumb" href="https://www.vmall.com/product/516255415.html" target="_blank" onclick="pushFoolAdvertMsg('3','精品平板','https://res0.vmallres.com/pimages//frontLocation/content/1948737/1521713265184.jpg','1521713265184.jpg','https://www.vmall.com/product/516255415.html')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/1948737/1521713265184.jpg" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/312318362.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'3','精品平板','547224994','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443183708/428_428_1495096799385mp.jpg" alt="华为平板 M3 青春版 10.1英寸 3GB+32GB WiFi版（皎月白）"
                                    />
                                </p>
                                <div class="grid-title">华为平板 M3 青春版 10.1英寸</div>
                                <p class="grid-desc">EMUI5.1流畅体验&nbsp;</p>
                                <p class="grid-price">&yen;1899</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/405225095.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'3','精品平板','852174199','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443192458/428_428_1500455962969mp.jpg" alt="荣耀畅玩平板2 9.6英寸 WiFi高配版（苍穹灰）"
                                    />
                                </p>
                                <div class="grid-title">荣耀畅玩平板2 9.6英寸</div>
                                <p class="grid-desc">限时直降50元&nbsp;</p>
                                <p class="grid-price">&yen;1249</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//tag/77/1497575918300.png" alt="荣耀畅玩平板2 9.6英寸 WiFi高配版（苍穹灰）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/142312570.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'3','精品平板','121657460','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443185399/428_428_1497422265771mp.jpg" alt="华为平板M3 青春版 8英寸 3GB+32GB WiFi版（皎月白）"
                                    />
                                </p>
                                <div class="grid-title">华为平板M3 青春版 8英寸</div>
                                <p class="grid-desc">EMUI5.1流畅体验&nbsp;</p>
                                <p class="grid-price">&yen;1399</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/13278818.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'3','精品平板','811569431','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443146048/428_428_1476778957240mp.jpg" alt="荣耀平板2 3GB+32GB WiFi版（香槟金）"
                                    />
                                </p>
                                <div class="grid-title">荣耀平板2</div>
                                <p class="grid-desc">限时最高直降100元 赠保护膜&nbsp;</p>
                                <p class="grid-price">&yen;1199</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//tag/87/1497576023361.png" alt="荣耀平板2 3GB+32GB WiFi版（香槟金）" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/241920871.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'3','精品平板','58267447','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443143580/428_428_1473406494708mp.jpg" alt="华为平板 M3 4GB+32GB  WIFI版（日晖金）"
                                    />
                                </p>
                                <div class="grid-title">华为平板 M3</div>
                                <p class="grid-desc">2K高清屏 HI-FI音效&nbsp;</p>
                                <p class="grid-price">&yen;1888</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/121879018.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'3','精品平板','571334062','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443181056/428_428_1494902274982mp.jpg" alt="荣耀畅玩平板2 8英寸 WiFi版（苍穹灰）"
                                    />
                                </p>
                                <div class="grid-title">荣耀畅玩平板2 8英寸</div>
                                <p class="grid-desc">4800mAh大电池长续航&nbsp;</p>
                                <p class="grid-price">&yen;749</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/306161153.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'3','精品平板','234223211','12')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res2.vmallres.com/pimages//product/6901443192434/428_428_1500629825123mp.jpg" alt="荣耀畅玩平板2 7英寸 WiFi版（苍穹灰）"
                                    />
                                </p>
                                <div class="grid-title">荣耀畅玩平板2 7英寸</div>
                                <p class="grid-desc">限时优惠直降11元&nbsp;</p>
                                <p class="grid-price">&yen;588</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 排除非4倍数的商品 -->
    <!-- 非对称式 asym_array -->

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
    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

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
                <div id="goodsContent4" class="goods-rolling swiper-container relative pdt-12">
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
                </div>
            </div>
        </div>
    </div>
    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_443593">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">热销配件</h2>
                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-54" target="_blank" onclick="pushFoolMsg('6','热销配件','/list-54')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/200162339.html#666644070" target="_blank" onclick="pushFoolAdvertMsg('6','热销配件','https://res0.vmallres.com/pimages//frontLocation/content/951979/1521288689939.jpg','1521288689939.jpg','https://www.vmall.com/product/200162339.html#666644070')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/951979/1521288689939.jpg" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/936223974.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'6','热销配件','534967719','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443207077/428_428_1512699241768mp.jpg" alt="华为智能体脂秤" />
                                </p>
                                <div class="grid-title">华为智能体脂秤</div>
                                <p class="grid-desc">高精度芯片 更精准的感知&nbsp;</p>
                                <p class="grid-price">&yen;199</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="华为智能体脂秤" />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/327369106.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'6','热销配件','417786268','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443207657/428_428_1513330615701mp.jpg" alt="华为6700mAh 移动电源 标准版（粉色）"
                                    />
                                </p>
                                <div class="grid-title">华为6700mAh 移动电源</div>
                                <p class="grid-desc">时尚简约 多重安全防护&nbsp;</p>
                                <p class="grid-price">&yen;99</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/875753311.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'6','热销配件','189161731','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443174256/428_428_1489548822739mp.jpg" alt="荣耀xSport 运动蓝牙耳机（魅焰红）"
                                    />
                                </p>
                                <div class="grid-title">荣耀运动蓝牙耳机</div>
                                <p class="grid-desc">今日优惠50元，领券更优惠&nbsp;</p>
                                <p class="grid-price">&yen;249</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/794044956.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'6','热销配件','879733047','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443192946/428_428_1501064909833mp.jpg" alt="华为全景相机（灰色）"
                                    />
                                </p>
                                <div class="grid-title">华为全景相机</div>
                                <p class="grid-desc">360度无界视野&nbsp;</p>
                                <p class="grid-price">&yen;899</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/194128141.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'6','热销配件','553811697','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443173129/428_428_1518397678332mp.jpg" alt="荣耀体脂秤（白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀体脂秤</div>
                                <p class="grid-desc">今日优惠30元，领券更优惠&nbsp;</p>
                                <p class="grid-price">&yen;169</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/291811909.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'6','热销配件','858715824','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443179442/428_428_1497325586428mp.jpg" alt="华为运动心率蓝牙耳机（黑色）"
                                    />
                                </p>
                                <div class="grid-title">华为运动心率蓝牙耳机</div>
                                <p class="grid-desc">自在运动 随心律动&nbsp;</p>
                                <p class="grid-price">&yen;699</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="goodsContent5" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="8">
                            <a class="thumb" href="/product/583301172.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443209491/428_428_1511839266304mp.jpg" alt="荣耀车载充电器（supercharge 快充版）（黑色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀车载充电器（supercharge 快充版）</div>
                                <p class="grid-desc">SuperCharge快速充电&nbsp; </p>
                                <p class="grid-price">&yen;149</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/87/1497576023361.png" alt="荣耀车载充电器（supercharge 快充版）（黑色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="9">
                            <a class="thumb" href="/product/602512743.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443204694/428_428_1512356560498mp.jpg" alt="华为运动心率蓝牙耳机R1 Pro（红色）"
                                    />
                                </p>
                                <div class="grid-title">华为运动心率蓝牙耳机R1 Pro</div>
                                <p class="grid-desc">从心率到“心晴” 从运动到心动&nbsp; </p>
                                <p class="grid-price">&yen;699</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="/product/259735704.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443199365/428_428_1518168609693mp.jpg" alt="荣耀移动电源10000mAh快充版 （黑色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀移动电源10000mAh快充版</div>
                                <p class="grid-desc">今日优惠20元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;149</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="/product/973611543.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443164509/428_428_1490087922122mp.jpg" alt="华为运动蓝牙耳机（黑色）"
                                    />
                                </p>
                                <div class="grid-title">华为运动蓝牙耳机</div>
                                <p class="grid-desc">高品质音质 智能开关&nbsp; </p>
                                <p class="grid-price">&yen;269</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="华为运动蓝牙耳机（黑色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="/product/812952235.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//frontLocation/content/775177/1489245365965.jpg" alt="荣耀引擎耳机2代" />
                                </p>
                                <div class="grid-title">荣耀引擎耳机2代</div>
                                <p class="grid-desc">今日优惠40元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;89</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/77/1497575918300.png" alt="荣耀引擎耳机2代（皓月银）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="/product/706470980.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443158379/428_428_1484107261446mp.jpg" alt="华为10000mAh 移动电源 9V2A 快充版（曜石黑）"
                                    />
                                </p>
                                <div class="grid-title">华为10000mAh 移动电源</div>
                                <p class="grid-desc">18W双向快充&nbsp; </p>
                                <p class="grid-price">&yen;199</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="华为10000mAh 移动电源 9V2A 快充版（曜石黑）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="/product/927153142.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443154715/428_428_1515376079265mp.jpg" alt="荣耀车载充电器 快充版（黑色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀车载充电器 快充版</div>
                                <p class="grid-desc">今日优惠20元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;79</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/77/1497575918300.png" alt="荣耀车载充电器 快充版（黑色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="/product/75380481.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443167258/428_428_1490921883474mp.jpg" alt="华为20000mAh 移动电源 9V2A 快充版（黑色）"
                                    />
                                </p>
                                <div class="grid-title">华为2万毫安移动电源</div>
                                <p class="grid-desc">大容量 更持久&nbsp; </p>
                                <p class="grid-price">&yen;299</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="/product/430223039.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443184903/428_428_1495018208785mp.jpg" alt="荣耀三脚架自拍杆 无线版（白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀三脚架自拍杆 无线版</div>
                                <p class="grid-desc">今日优惠30元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;89</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="荣耀三脚架自拍杆 无线版（白色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="/product/315672466.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443156689/428_428_1484106183237mp.jpg" alt="HUAWEI SuperCharge 快速充电器（白色）"
                                    />
                                </p>
                                <div class="grid-title">华为4.5V 5A快速充电器</div>
                                <p class="grid-desc">5A快充 智能适配&nbsp; </p>
                                <p class="grid-price">&yen;109</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="HUAWEI SuperCharge 快速充电器（白色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="18">
                            <a class="thumb" href="/product/735640556.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443188529/428_428_1511511587194mp.jpg" alt="荣耀魔声耳机（红色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀魔声耳机</div>
                                <p class="grid-desc">世界音你不同&nbsp; </p>
                                <p class="grid-price">&yen;249</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="19">
                            <a class="thumb" href="/product/104065115.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//frontLocation/content/775189/1489245031509.jpg" alt="华为9V2A充电器" />
                                </p>
                                <div class="grid-title">华为9V2A充电器</div>
                                <p class="grid-desc">高速快充 智能兼容&nbsp; </p>
                                <p class="grid-price">&yen;69</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="20">
                            <a class="thumb" href="/product/2205.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//frontLocation/content/1268875/1489247952224.jpg" alt="荣耀小口哨蓝牙耳机" />
                                </p>
                                <div class="grid-title">荣耀小口哨蓝牙耳机</div>
                                <p class="grid-desc">今日最高优惠30元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;169</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="荣耀小口哨 AM07 智控随充蓝牙耳机 （金色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="21">
                            <a class="thumb" href="/product/20999181.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/1303050003801/428_428_1492166928020mp.jpg" alt="华为三脚架自拍杆 无线版（黑色）"
                                    />
                                </p>
                                <div class="grid-title">华为无线三脚架自拍杆</div>
                                <p class="grid-desc">开启自拍新时代&nbsp; </p>
                                <p class="grid-price">&yen;119</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="22">
                            <a class="thumb" href="/product/148576155.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443121182/428_428_1497259947904mp.jpg" alt="荣耀探空精灵（冰晶白）"
                                    />
                                </p>
                                <div class="grid-title">荣耀探空精灵</div>
                                <p class="grid-desc">今日优惠50元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;549</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/87/1497576023361.png" alt="荣耀探空精灵（冰晶白）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="23">
                            <a class="thumb" href="/product/944393591.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//frontLocation/content/1268797/1489245920315.jpg" alt="华为车载快速充电器" />
                                </p>
                                <div class="grid-title">华为车载快速充电器</div>
                                <p class="grid-desc">5A快充 4重保护&nbsp; </p>
                                <p class="grid-price">&yen;159</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/71/1497575814983.png" alt="HUAWEI SuperCharge 车载快速充电器（银色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="24">
                            <a class="thumb" href="/product/200162339.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443211142/428_428_1513827604555mp.jpg" alt="荣耀音乐小巨蛋（红色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀音乐小巨蛋</div>
                                <p class="grid-desc">今日优惠20元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;179</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//tag/87/1497576023361.png" alt="荣耀音乐小巨蛋（红色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="25">
                            <a class="thumb" href="/product/369652507.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res5.vmallres.com/pimages//product/6901443193080/428_428_1504584577479mp.jpg" alt="荣耀畅玩手环 A2（白色）"
                                    />
                                </p>
                                <div class="grid-title">荣耀畅玩手环 A2</div>
                                <p class="grid-desc">今日优惠30元，领券更优惠&nbsp; </p>
                                <p class="grid-price">&yen;169</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled">
                        <span></span>
                    </div>
                    <div class="grid-btn swiper-button-next btn-next">
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_443601">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">品牌配件</h2>
                <div class="channel-more fr">
                    <span></span>
                    <span></span>
                    <span></span>
                    <a href="/list-54" target="_blank" onclick="pushFoolMsg('7','品牌配件','/list-54')">更多></a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/10086906767000.html#10086086346869" target="_blank" onclick="pushFoolAdvertMsg('7','品牌配件','https://res0.vmallres.com/pimages//frontLocation/content/1268659/1521288824593.png','1521288824593.png','https://www.vmall.com/product/10086906767000.html#10086086346869')">
                                <img data-lazy-src="https://res0.vmallres.com/pimages//frontLocation/content/1268659/1521288824593.png" alt="" />
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/10086769167918.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'7','品牌配件','10086271323651','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150001401/428_428_1507860879045mp.jpg" alt="三思智能彩色球泡灯（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">三思智能彩色球泡灯</div>
                                <p class="grid-desc">3.15-3.25 买三赠一&nbsp;</p>
                                <p class="grid-price">&yen;99</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/10086085134621.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'7','品牌配件','10086165914030','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150020001/428_428_1521013557213mp.jpg" alt="Sleepace享睡RestOn智能睡眠监测器 Z400TWP（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">Sleepace享睡RestOn智能睡眠监测器</div>
                                <p class="grid-desc">3.18-3.31 限时直降100元&nbsp;</p>
                                <p class="grid-price">&yen;899</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/87/1497576023361.png" alt="Sleepace享睡RestOn智能睡眠监测器 Z400TWP（支持HUAWEI HiLink）"
                                    />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/1858.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'7','品牌配件','3531','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB10113030900101/428_428_1467364207768mp.jpg" alt="大康 Dacom Athlete（G05）专用运动型蓝牙耳机（黑色）"
                                    />
                                </p>
                                <div class="grid-title">大康 专用运动型蓝牙耳机</div>
                                <p class="grid-desc">NFC功能 / 重低音&nbsp;</p>
                                <p class="grid-price">&yen;128</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/83/1497575981308.png" alt="大康 Dacom Athlete（G05）专用运动型蓝牙耳机（黑色）"
                                    />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/10086132466242.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'7','品牌配件','10086361738676','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150001201/428_428_1521603037469mp.jpg" alt="科沃斯（Ecovacs）地宝D36F 智能扫地机器人（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">科沃斯智能扫地机器人</div>
                                <p class="grid-desc">净彩生活 不止优雅&nbsp;</p>
                                <p class="grid-price">&yen;999</p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/10086603105278.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'7','品牌配件','10086114286979','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/3102150020601/428_428_1521424993604mp.jpg" alt="品多（PINTOS）全自动智能指纹门锁M1（亚光银）（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">品多全自动智能指纹门锁</div>
                                <p class="grid-desc">限时直降200元&nbsp;</p>
                                <p class="grid-price">&yen;2799</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/87/1497576023361.png" alt="品多（PINTOS）全自动智能指纹门锁M1（亚光银）（支持HUAWEI HiLink）"
                                    />
                                </p>
                            </a>
                        </li>
                        <li class="grid-items">
                            <a class="thumb" href="/product/948834433.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'7','品牌配件','661806944','13')">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB1303030003302/428_428_1472550239020mp.jpg" alt="缤特力 Voyager Edge SE 商务蓝牙耳机（白香槟金）"
                                    />
                                </p>
                                <div class="grid-title">缤特力 商务蓝牙耳机</div>
                                <p class="grid-desc">限时直降160元&nbsp;</p>
                                <p class="grid-price">&yen;538</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/95/1497576073762.png" alt="缤特力 Voyager Edge SE 商务蓝牙耳机（白香槟金）" />
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="goodsContent6" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="8">
                            <a class="thumb" href="/product/3161.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB10113040400202/428_428_1467770916944mp.jpg" alt="耐翔 N108 车载负离子空气净化器 （闪亮银）"
                                    />
                                </p>
                                <div class="grid-title">耐翔 N108 车载负离子空气净化器 （闪亮银）</div>
                                <p class="grid-desc">&nbsp; </p>
                                <p class="grid-price">&yen;99</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/95/1497576073762.png" alt="耐翔 N108 车载负离子空气净化器 （闪亮银）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="9">
                            <a class="thumb" href="/product/10086131105122.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150006001/428_428_1515654939579mp.jpg" alt="720全智能净化器EP800（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">720全智能净化器</div>
                                <p class="grid-desc">强效除霾 降醛灭菌&nbsp; </p>
                                <p class="grid-price">&yen;2499</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="/product/24315698.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150009301/428_428_1516601813153mp.jpg" alt="小狗小型家用紫外线除螨仪D-609"
                                    />
                                </p>
                                <div class="grid-title">小狗小型家用紫外线除螨仪</div>
                                <p class="grid-desc">限时直降400元&nbsp; </p>
                                <p class="grid-price">&yen;499</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/87/1497576023361.png" alt="小狗小型家用紫外线除螨仪D-609" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="/product/10086108103006.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150001001/428_428_1503562216889mp.jpg" alt="欧普 智清读写台灯（白色）（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">欧普 智清读写台灯</div>
                                <p class="grid-desc">眼见清澈光&nbsp; </p>
                                <p class="grid-price">&yen;259</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="/product/589623440.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102030002101/428_428_1509064211648mp.jpg" alt="绿联 Type-C转HDMI连接线（白色）"
                                    />
                                </p>
                                <div class="grid-title">绿联 Type-C转HDMI连接线（白色）</div>
                                <p class="grid-desc">为Mate 10 系列产品投屏设计&nbsp; </p>
                                <p class="grid-price">&yen;108</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="/product/10086652363123.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150005301/428_428_1511865973343mp.jpg" alt="BroadLink博联 月光宝盒智能排插（白色）（支持HUAWEI HiLink）"
                                    />
                                </p>
                                <div class="grid-title">博联 月光宝盒智能排插</div>
                                <p class="grid-desc">不止是颜值派更是实力派！&nbsp; </p>
                                <p class="grid-price">&yen;109</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="/product/10086791397339.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB3102150017601/428_428_1518343918767mp.jpg" alt="晾霸 HW30 高端智能云晾衣机（现代金）（支持HUAWEI HiLink版）"
                                    />
                                </p>
                                <div class="grid-title">晾霸 高端智能云晾衣机</div>
                                <p class="grid-desc">限时直降100元&nbsp; </p>
                                <p class="grid-price">&yen;1799</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="/product/1840.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB10113050104001/428_428_1467854980972mp.jpg" alt="耐翔 NAENY 手机扩容U盘 安卓版 16GB存储（银色）"
                                    />
                                </p>
                                <div class="grid-title">耐翔 NAENY 手机扩容U盘 安卓版 16GB存储（银色）</div>
                                <p class="grid-desc">手机轻松扩容，高效传输&nbsp; </p>
                                <p class="grid-price">&yen;69</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="/product/210876330.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB1303050004004/428_428_1494492831899mp.jpg" alt="ROCK-M 车载手机支架 金属版（灰色）"
                                    />
                                </p>
                                <div class="grid-title">ROCK-M 车载手机支架 金属版（灰色）</div>
                                <p class="grid-desc">限时直降10元&nbsp; </p>
                                <p class="grid-price">&yen;68</p>
                                <p class="grid-tips">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//tag/77/1497575918300.png" alt="ROCK-M 车载手机支架 金属版（灰色）" />
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="/product/898148996.html" target="_blank">
                                <p class="grid-img">
                                    <img data-lazy-src="https://res6.vmallres.com/pimages//product/GB1303110000303/428_428_1486694683154mp.jpg" alt="闪迪 SanDisk 高速TF卡 microSDHC/microSDXC UHS-I存储卡 C10 80MB/秒 32G（红灰色）"
                                    />
                                </p>
                                <div class="grid-title">闪迪 SanDisk 高速TF卡</div>
                                <p class="grid-desc">快速传输文件&nbsp; </p>
                                <p class="grid-price">&yen;90</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled">
                        <span></span>
                    </div>
                    <div class="grid-btn swiper-button-next btn-next">
                        <span></span>
                    </div>
                </div>
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
            <a target="_blank" href="https://sale.vmall.com/smrz.html">
                <img src="https://res.vmallres.com/pimages//sale/2017-03/20170313112742735.jpg" title="实名认证" style="float:none;" />
            </a>
        </div>
        <!-- 20130903-ad-762*132-end -->
    </div>
    <div class="hr-60"></div>
</div>

<!-- 2017-02-15-top-banner-start -->
<!-- 顶部banner -->
<textarea id="top-banner" class="hide">

	<div class="top-banner-max hide" id="top-banner-max">
		<div class="top-banner-img">

			<a title="折叠" href="javascript:;" class="button-top-banner-min" id="top-banner-max-toggle">-</a>
		</div>
	</div>
	<div class="top-banner-min hide" id="top-banner-min">
		<div class="top-banner-img">
			<p style="font-size:0;">
			<a style="display:block;position:relative;width:1920px;text-align:center;left:50%;background-color:;margin-left:-960px;" title="华为" target="_blank" href="https://www.vmall.com/product/10086151872147.html"><img src="https://res.vmallres.com/pimages//sale/2018-03/20180321180017261.jpg" title="华为" /></a>
</p>
			<a title="展开" href="javascript:;" class="button-top-banner-max hide" id="top-banner-min-toggle">+</a>
			<a class="button-top-banner-close" href="javascript:;" title="关闭" id="top-banner-min-close">关闭</a>
		</div>
	</div>

</textarea>
<!-- 顶部banner end -->
<!-- 2017-02-15-top-banner-end -->

<!-- 2017-09-21-bottom-banner-start -->

<!-- 2017-09-21-bottom-banner-end -->

<script>
    ec.load("ajax");
    ec.pkg("ec.index");
    ec.index.clickHref = function (a) {
        window.open(a)
    };
    ec.index.sales = function (e) { };
    ec.index.salesStatus = [];
    ec.index.salesCallBack = function (h, k) {
        var f,
            d = [],
            b = new Date();
        b.setTime(ec.index.now.parseDate("yyyy-MM-dd HH:mm:ss"));
        var a = function (i, o) {
            var n = $(o),
                l = n.attr("data-skutype"),
                m = $(".channel-button", n);
            switch (parseInt(i, 10)) {
                case 0:
                    m.html("\u9a6c\u4e0a\u5f00\u59cb").attr("title", "\u9a6c\u4e0a\u5f00\u59cb");
                    if (l == 3 || l == 4) {
                        m.attr("class", "channel-button-begin")
                    }
                    break;
                case 1:
                    if (l == 3) {
                        m.html("\u53bb\u770b\u770b").attr("title", "\u53bb\u770b\u770b")
                    } else {
                        m.html("\u7acb\u5373\u62a2\u8d2d").attr("title", "\u7acb\u5373\u62a2\u8d2d")
                    }
                    m.attr("class", "channel-button");
                    break;
                case 2:
                    m.html("\u6d3b\u52a8\u7ed3\u675f").attr("title", "\u6d3b\u52a8\u7ed3\u675f");
                    if (l == 2 || l == 3) {
                        m.attr("class", "channel-button-end")
                    }
                    break
            }
        };
        for (var c = 0; c < k.infoList.length; c += 1) {
            f = h[c];
            d = k.infoList[c];
            $(".channel-button", f).css("visibility", "");
            if (!d || !d.id) {
                continue
            }
            if (d.status == 1) {
                if (d.startTime && d.startTime >= b) {
                    d.status = 0
                }
                if (d.endTime && d.endTime <= b) {
                    d.status = 2
                }
            }
            a(d.status, f);
            if (d.startTime || d.endTime || d.limitAmount > 0) {
                $(".p-countdown", f).show()
            }
            if (d.limitAmount > 0) {
                $(".p-quantity", f).html("\u9650<b>" + d.limitAmount + "</b>\u53f0").show()
            }
            var e = parseFloat($(f).attr("data-price"), 10);
            if (d.price > 0) {
                if (parseInt(d.price) == d.price) {
                    $(".p-sale-price span, .p-price span", f).html((d.price));
                    if (parseInt(e) == e) {
                        $(".economize", f).html(e - d.price)
                    } else {
                        $(".economize", f).html((e - d.price).toFixed(2))
                    }
                } else {
                    $(".p-sale-price span, .p-price span", f).html((d.price).toFixed(2));
                    if (e - d.price == 0) {
                        $(".economize", f).html("0")
                    } else {
                        $(".economize", f).html((e - d.price).toFixed(2))
                    }
                }
            }
            $(".sale-quantity", f).html(d.saleAmount);
            if (d.status != 2 && (d.startTime || d.endTime)) {
                var g = ($(f).attr("data-block") == "slider") ? true : false,
                    j = [];
                if (d.startTime) {
                    j.push(new Date(d.startTime).format("yyyy-MM-dd HH:mm:ss"))
                }
                if (d.endTime) {
                    j.push(new Date(d.endTime).format("yyyy-MM-dd HH:mm:ss"))
                }
                ec.index.salesStatus[c] = d.status;
                ec.ui.countdown($(".p-time", f), {
                    html: "<b>" + (g ? "" : "\u5269\u4f59") + "</b><ins><i>{#hours}</i><s></s></ins><em>\u65f6</em><ins><i>{#minutes}</i><s></s></ins><em>\u5206</em><ins><i>{#seconds}</i><s></s></ins><em>\u79d2</em>",
                    now: b,
                    times: j,
                    index: c,
                    callback: function (i) {
                        ec.index.salesStatus[i.index]++;
                        a(ec.index.salesStatus[i.index], h[i.index])
                    }
                })
            }
        }
    };
    ec.ready(function () {

        var skuids = $("#recommendSkuIds").val();
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUID": skuids,
                    "load": "1"
                }
        }
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011501", "link", value]);

        if (ec.account.isLogin()) {
            $("#cust_login_info").hide()
        }
        var a = ec.index.bigAd,
            g = ec.index.smallAd,
            f = ec.index.bigadShowTime,
            e,
            b,
            c = function () {
                var j = b.innerHeight();
                var i = e.innerHeight();
                var k = $("#search-bar-form").offset().top - i + j;
                var h = $("#search-bar-form").innerHeight();
                $(".autocomplete-w1").parent().hide();
                e.slideUp(1000, function () {
                    if (g) {
                        b.show()
                    }
                    $(".autocomplete-w1").parent().css({
                        top: (k + h + "px")
                    });
                    $(".autocomplete-w1").parent().show();
                    ec.index.SCROLL_GET = ec.index.getscrollLayout()
                });
                if (d) {
                    clearTimeout(d)
                }
            },
            d;
        $("#top-banner-block").html(gid("top-banner").value);
        e = $("#top-banner-max");
        b = $("#top-banner-min");
        $("#top-banner-min-close").click(function () {
            $("#top-banner-block").hide();
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        });
        if (a) {
            e.show();
            ec.index.SCROLL_GET = ec.index.getscrollLayout();
            $("#top-banner-max-toggle").click(c);
            d = setTimeout(c, f)
        }
        if (g && !a) {
            b.show();
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        }
        if (!g && !a) {
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        }
        $("body .layout .channel-pro-item").hover(function () {
            $(this).addClass("pro-info-hover")
        }, function () {
            $(this).removeClass("pro-info-hover")
        });
        ec.index.sales("#main-sale-list .activity-list, #slider-sale-list .activity-list");
        ec.index.floatLayout()
    });
    ec.index.SCROLL_GET = {};
    ec.index.getscrollLayout = function () {
        var b = $(".home-channel-container .layout"),
            d = $(".event-float-layout"),
            a = [],
            c = [];
        if (b.length == 0 || d.length == 0) {
            return false
        }
        b.each(function (e, f) {
            c.push($(this).offset().top);
            a.push($(this).outerHeight())
        });
        return {
            scrollListHeight: a,
            scrollList: c,
            top: d.offset().top
        }
    };
    ec.index.floatLayout = function () {
        var a = $(".event-float-layout");
        if (a.length == 0 || ec.index.SCROLL_GET === false) {
            return false
        }
        $("body").css({
            "min-width": "1200px",
            "overflow-x": "hidden"
        });
        var d = $(".event-float"),
            n = $(".hungBar-top"),
            h = $(".home-channel-container .layout"),
            p = $(".home-channel-container"),
            m = $(".home-channel-container .layout .channel-title"),
            l = "";
        a.find("ul").children().remove();
        function f(i) {
            return $("<span/>").text(i).html()
        }
        h.each(function (i, q) {
            var name = f(m.eq(i).text());
            l += '<li><a data-id="' + i + '" href="javascript:;" onclick = "pushMsg(\'' + name + '\');">' + name + "</a></li>"
        });
        a.find("ul").append(l);
        a.bind("click", function (r) {
            var q = $(r.target);
            if (q[0].nodeName.toLowerCase() === "a") {
                var i = parseInt(q.attr("data-id"));
                q.parent().addClass("hover").siblings().removeClass("hover");
                $("html,body").animate({
                    scrollTop: ec.index.SCROLL_GET.scrollList[i] + "px"
                }, 400)
            }
        });
        var o = a.outerHeight(),
            e = d.offset(),
            c = e.left,
            b = $(window).height(),
            k = b / 2 - (o / 2),
            j = h.length,
            g = true;
        a.css({
            height: j * 47 + "px",
            top: k + "px"
        });
        if (document.body.clientWidth <= 1400) {
            a.hide();
            g = false
        }
        if ($.browser.msie && parseInt($.browser.version) <= 9) {
            a.hide()
        }
        if ($.browser.msie && parseInt($.browser.version) <= 7) {
            g = false
        } else {
            $(window).scroll(function () {
                if (!g) {
                    return
                }
                var i = $(window).scrollTop();
                if (i >= b) {
                    n.fadeIn(80)
                } else {
                    n.fadeOut(80)
                }
                if (i >= ec.index.SCROLL_GET.scrollList[0] - k) {
                    a.css({
                        top: k + "px"
                    }).addClass("tool-Fixed");
                    if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                        a.show()
                    }
                    $.each(ec.index.SCROLL_GET.scrollList, function (q, r) {
                        if (i >= r - ec.index.SCROLL_GET.scrollListHeight[q] / 2) {
                            a.find("li").eq(q).addClass("hover").siblings().removeClass("hover")
                        }
                    });
                    if (i >= (ec.index.SCROLL_GET.scrollList[j - 1] + ec.index.SCROLL_GET.scrollListHeight[j - 1] / 2 - j * 47)) {
                        a.removeClass("tool-Fixed");
                        if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                            a.hide()
                        }
                    }
                } else {
                    a.removeClass("tool-Fixed");
                    if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                        a.hide()
                    }
                }
            }, 200)
        }
        $(window).resize(function () {
            if (document.body.clientWidth > 1400) {
                a.show();
                g = true;
                return
            }
            a.hide();
            g = false;
            $("body").css({
                "min-width": "1200px",
                "overflow-x": "auto"
            })
        }, 200);
        if ($(window).scrollTop() > 0) {
            $(window).trigger("scroll")
        }
    };
    $(document).ready(function () {
        var c = $(".goods-rolling"),
            a = [];
        c.each(function (f, g) {
            a.push($(this).attr("id"))
        });
        $.each(a, function (f, g) {
            var totalLen = $("#" + g).find('.swiper-slide').length;
            if (totalLen <= 5.5) {
                $("#" + g).find('.swiper-button-prev').addClass('disabled');
                $("#" + g).find('.swiper-button-next').addClass('disabled');
            } else {
                $("#" + g).find('.swiper-button-next').removeClass('disabled');

            }
            var mySwiper = new Swiper("#" + g, {
                slidesPerView: 5.5,
                slidesPerGroup: 5.5
            });
            //	左边箭头
            $("#" + g).find('.btn-prev').click(function () {
                //		插件向左切换效果
                mySwiper.swipePrev();
            })
            //	右边箭头
            $("#" + g).find('.btn-next').click(function () {
                mySwiper.swipeNext();
            })

        });

        new Slider({
            objid: "#notice",
            listname: ".p-notice-list",
            shownum: 1,
            type: 2,
            autoplay: true
        }).init();
        var b = $(".bottomImage");
        if (b.attr("src")) {
            b.show().bind("click", function () {
                var f = $("#adsArearLink").val();
                if (f != null && f.trim() != "") {
                    var g = window.open(f, "_blank");
                    g.opener = null
                }
            })
        }
        var e = $(".grid-list .grid-items,.grid-promo-list .grid-items");
        e.hover(function () {
            $(this).addClass("current")
        }, function () {
            $(this).removeClass("current")
        });
        var d = $(".hungBar-top");
        d.bind("click", function () {
            $("html,body").animate({
                scrollTop: "0px"
            }, 400)
        })
    })


</script>
<script>
    "use strict"; var Slider = function (a) { this.i = 0; this.objid = a.objid || null; this.preclassname = a.preclassname || ".btn-prev"; this.nextclassname = a.nextclassname || ".btn-next"; this.listname = a.listname || ".grid-list"; this.listitem = a.listitem || "li"; this.shownum = a.shownum || 5.5; this.type = a.type || 1; this.autoplay = a.autoplay || false }; Slider.prototype = { init: function () { var b = this; var a = b.set(); if (b.autoplay) { b.auto(a) } else { b.next(a); b.pre(a) } }, auto: function (e) { var d = this, c = null; $(d.listname).find(d.listitem).eq(0).clone().appendTo(d.listname); e.len += 1; var b = (e.itemHeight) * (e.len - 1), a = function () { d.i++; if (Math.abs(parseInt(e.$grid.css("margin-top"))) == b) { e.$grid.css("margin-top", 0); d.i = 1 } e.$grid.animate({ "margin-top": "-" + (d.i * e.itemHeight * d.shownum) + "px" }, 500) }; if (d.autoplay) { c = setInterval(a, 2000); e.$grid.hover(function () { clearInterval(c) }, function () { c = setInterval(a, 2000) }) } }, set: function () { var d = this, g = $(d.objid + " " + d.listitem), i = $(d.objid + " " + d.listname), h = $(d.objid + " " + d.preclassname), b = $(d.objid + " " + d.nextclassname), e = g.length, f = g.outerWidth(), a = g.outerHeight(), c = Math.ceil(e / d.shownum); switch (d.type) { default: case 1: i.css("width", (f + 1) * e + "px"); break; case 2: i.css("height", (a) * e + "px"); break }return { $item: g, $grid: i, $pre: h, $next: b, len: e, itemWidth: f, itemHeight: a, num: c } }, pre: function (b) { var a = this; b.$pre.bind("click", function () { if ($(this).hasClass("disabled")) { return } a.i--; if (a.i - 1 < 0) { b.$pre.addClass("disabled") } b.$next.removeClass("disabled"); switch (a.type) { default: case 1: b.$grid.animate({ "margin-left": a.i == 0 ? 0 : parseInt(b.$grid.css("margin-left")) + (b.itemWidth * a.shownum) + "px" }, 500); break; case 2: b.$grid.animate({ "margin-top": a.i == 0 ? 0 : parseInt(b.$grid.css("margin-top")) + (b.itemHeight * a.shownum) + "px" }, 500) } }) }, next: function (b) { var a = this; b.$next.bind("click", function () { if ($(this).hasClass("disabled")) { return } a.i++; b.$pre.removeClass("disabled"); switch (a.type) { default: case 1: if (a.shownum > 1) { if (a.i + 1 == b.num) { var d = parseInt(b.$grid.css("margin-left")); var c = (b.len - ((a.i) * parseInt(a.shownum)) - 1 / 2) * b.itemWidth; b.$grid.animate({ "margin-left": d - c + "px" }, 500) } else { b.$grid.animate({ "margin-left": "-" + (a.i * b.itemWidth * parseInt(a.shownum)) + "px" }, 500) } } else { b.$grid.animate({ "margin-left": "-" + (a.i * b.itemWidth * a.shownum) + "px" }, 500) } break; case 2: b.$grid.animate({ "margin-top": "-" + (a.i * b.itemHeight * a.shownum) + "px" }, 500); break }if (a.i + 1 == b.num) { b.$next.addClass("disabled") } }) } };
</script>
<script>
    (function (_ec) {
        //顶部banner
        _ec.bigAd = false;
        _ec.smallAd = true;
        _ec.bigadShowTime = 8000;
        _ec.now = new Date().format('yyyy-MM-dd HH:mm:ss');

        _ec.configNowTime = function () {
            if (_serverTime) {
                _ec.now = new Date(_serverTime).format('yyyy-MM-dd HH:mm:ss');
            }
        }

        //ec.load({
        //	url : "/serverTime.jsp?"+(new Date()).getTime(),
        //	type : "js",
        //	loadType:"lazy",
        //	onload : _ec.configNowTime
        //});

    })(ec.index);


    /*
		 *
		 * 首页左浮动位置
		 *
		 * */
    (function ($) {
        function floatShow() {
            function getScrollTop() {
                var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
                return scrollTop;
            }
            if (getScrollTop() > 1080) {
                if ($(".leftfloat")) {
                    $(".leftfloat").addClass('leftfloat-show');
                }
            } else {
                if ($(".leftfloat")) {
                    $(".leftfloat").removeClass('leftfloat-show');
                }
            }
        };
        floatShow();



        window.onscroll = function () {
            floatShow();
        };
        function floatPosition() {
            if ($(".leftfloat")) {
                var floatLeft = ($(window).width() - 1200) / 2 - $('.leftfloat').width() - 10,
                    floatTop = $(window).height() / 2 - $('.leftfloat').height() / 2;
                $(".leftfloat").css('left', floatLeft);
                $(".leftfloat").css('top', floatTop);
                setTimeout(floatPosition, 100);
            }
        };
        floatPosition();
        window.onresize = function () {
            floatPosition();
        };
        /*
			 *
			 * 首页底部浮动位置
			 *
			 * */
        var $top = $('.home-channel-container .layout').eq(0).offset().top,
            $height = $('.bottom-banner').height();
        $(window).scroll(function () {
            var bottomV = $height * (-1);
            $(".bottom-banner").css("bottom", bottomV + "px");
            var scrollTop = $(window).scrollTop();
            if (scrollTop >= ($top - $height)) {
                $(".footer-container").css("padding-bottom", $height + "px");
                $(".bottom-banner").addClass('bm-0');
            } else {
                $(".bottom-banner").removeClass('bm-0');
                $(".footer-container").css("padding-bottom", "0");
            }
        })

    })(jQuery);

    //会员频道点击上报
    function pushMemberMsg(name, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010801", "link", value]);
    }

    //中通广告数据上报
    function pushBannerMsg(adid, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": adid,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011601", "link", value]);

    }

    $(".home-banner-slideshow").find("li").find("a").click(function () {
        var adid = $(this).find("img").attr("src");
        var url = $(this).attr("href");
        pushBannerMsg(adid, url);
    });
    //商品楼层更多点击上报
    function pushFoolMsg(index, category, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011703", "link", value]);
    }
    //商品楼层商品楼层子分类点击上报
    function pushFoolChildrenMsg(index, category, subCategory, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "subCategory": subCategory,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011701", "link", value]);
    }

    //底部通栏广告数据上报
    $(".ad.fl").find("a").click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": $(this).find("img").attr("src"),
                    "URL": $(this).attr("href"),
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011801", "link", value]);
    });

    //楼层广告数据上报
    function pushFoolAdvertMsg(index, category, adid, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "ADID": adid,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011702", "link", value]);
    }

    //右浮动导航数据上报
    $(".hover-list").find("li").find("a").click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "buttonName": $(this).html(),
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010001", "link", value]);
    });

    //首页弹窗数据上报
    $("#web_popup_ads").find("a").click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": $(this).find("img").attr("src"),
                    "URL": $(this).attr("href"),
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010002", "link", value]);
    });

    //楼层商品点击上报
    function pushFoolGoodsMsg(obj, location, index, category, skuId, type) {
        var row;
        var column;
        if (type == "13") {
            var num = (location) / 4;
            row = parseInt(num) + 1;
            if (row == 1) {
                column = location + 1;
            }
            else {
                column = parseInt((location) % 4) + 1;
            }
        }
        else if (type == "12") {
            row = parseInt((location - 1) / 4) + 1;
            column = parseInt((location - 1) % 4) + 1;
        }


        var url = obj.href;
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "SKUID": skuId,
                    "URL": url,
                    "row": "" + row,
                    "column ": "" + column,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011704", "link", value]);
    }

    /*	$(".bottom-banner").find("a").click(function(){
				var url = $(this).attr("href");
				var src = $(this).find("img").attr("src");
				var value = {
					"UID":ec.util.cookie.get("uid"),
					"TID":getPtid(),
					"TIME":getTime(),
					"CONTENT":
					{
					"ADID":src,
						"URL":url,
						"type":"1",
							"click":"1"
							}
				};
				ec.code.addAnalytics({hicloud:true});
				_paq.push(["trackLink","300010102", "link", value]);
			});
		*/
    $(".top-banner-min").find("a").live("click", function () {
        var name = $(this).attr("title");
        var type;
        var src;
        var url;
        if ($(this).attr("class") == "undefined" || $(this).attr("class") == "" || $(this).attr("class") == null) {
            type = "1";
            src = $(this).find("img").attr("src");
            url = $(this).attr("href");
        }
        else {
            type = "2";
            src = "";
            url = "";
        }

        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": src,
                    "URL": url,
                    "type": type,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010102", "link", value]);
    });

    $(".top-banner-max").find("a").live("click", function () {
        var name = $(this).attr("title");
        var type;
        var src;
        var url;
        if ($(this).attr("class") == "undefined" || $(this).attr("class") == "" || $(this).attr("class") == null) {
            type = "1";
            src = $(this).find("img").attr("src");
            url = $(this).attr("href");
        }
        else {
            type = "2";
            src = "";
            url = "";
        }

        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": src,
                    "URL": url,
                    "type": type,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010101", "link", value]);
    });

    function pushMsg(name) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "buttonName": name,
                    "click": "1"
                }

        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300010001", "link", value]);
    };

    function pushMsgMenu(location, key, name, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "location": location,
                    "click": "1"
                }

        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", key, "link", value]);
    };

    function pushMsgNotice(location) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "location": location,
                    "click": "1"
                }

        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011001", "link", value]);
    };

    $('.home-promo-list.clearfix li a').click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": $(this).parent().find('img').attr("src"),
                    "URL": $(this).attr('href'),
                    "locaion": $(this).parent().index() + 1,
                    "click": "1"
                }
        };
        ec.code.addAnalytics({ hicloud: true });
        _paq.push(["trackLink", "300011201", "link", value]);
    });
</script>


<!-- 2017-02-15-悬浮工具栏-start -->
<div class="hungBar">
    <a href="#" class="hungBar-top fr" id="hungBar-top" title="返回顶部">
        <i>返回顶部</i>
    </a>
</div>
<!-- 2017-02-15-悬浮工具栏-end -->
</body>

</html>
