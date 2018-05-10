<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/common.jsp" %>
<html>

<head>

    <title>华为商城官网-华为P20、华为Mate10、荣耀V10、华为P10、华为nova3e、荣耀9、华为Mate9、荣耀V9官方网站</title>
    <link rel="shortcut icon" href="https://www.vmall.com/favicon.ico">
    <link href="https://res8.vmallres.com/20180504/css/echannel/ec.core.base.min.css?20170722" rel="stylesheet" type="text/css">

    <link href="https://res8.vmallres.com/20180504/css/order/main.min.css?20180212" rel="stylesheet" type="text/css">
    <script src="https://res9.vmallres.com/20180504/js/common/jsapi.js?20141025" namespace="ec"></script>
    <script src="https://res9.vmallres.com/20180504/js/common/base/jquery-1.4.4.min.js"></script>
    <script src="https://res9.vmallres.com/20180504/js/common/ec.core.js?20141025"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/ec.business.min.js?20171028"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/base.min.js?20171028"></script>
    <script id="jsapi_loader0" loadtype="insert" type="text/javascript" src="https://res9.vmallres.com/20180504/js/common/ec.box/box-min.js"></script>
    <script>(function () { var time = 0, el = document.getElementById('jsapi_loader0'); if (!el || (el.readyState && 'complete' != el.readyState)) { if (time < 10) { setTimeout(arguments.callee, 30); time++; } else { logger.error('load the script of id jsapi_loader0 fail!'); } return; } ol._setLoadStatus("ec.box/box-min.js", "complete"); })();</script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/slider.min.js?20170426"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/swiper.min.js?20170426"></script>
    <!--[if lt IE 9]><script src="https://res9.vmallres.com/20180504/js/common/html5shiv.js"></script> <![endif]-->
</head>

<body class="wide sc">
<link href="${basePath}/resources/css/cart-css.css0">
<div class="top-banner" id="top-banner-block"></div>
<img src="https://res.vmallres.com/20180504/images/echannel/icon-common.png" class="hide">
<div class="shortcut">
    <div class="layout">
        <div class="s-sub">
        </div>
        <div class="s-main ">
            <img src="http://res.vmallres.com/20180305/images/echannel/bg/bg71.png" class="hide">
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
                                            <a href="${basePath}/register" rel="nofollow">&nbsp;&nbsp;注册</a>
                                        </c:if>
                                        <c:if test="${not empty CURRENT_USER}">
                                            <a href="#" rel="nofollow">&nbsp;&nbsp;欢迎你，${CURRENT_USER.username}</a>
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
            </ul>
        </div>

    </div>
</div>


<div class="header order-header">
    <div class="layout">
        <div class="left">
            <!-- 2017-06-19-logo-文字-start -->
            <div class="logo logo-word" style="position: relative;">
                <a href="${basePath}/" title="mmall商城" style="position: absolute;left: -47px; top: -15px;">
                    <img src="${basePath}/resources/images/logo.png" style="transform:scale(0.6);" alt="mmall商城">
                </a>
                <span style="margin-left: 180px;font-family:Helvetica Neue;">我的购物车</span>
            </div>
            <!-- 2017-06-19-logo-文字-end -->
        </div>

    </div>
</div>
<div class="layout ">


    <div class="hr-20"></div>
    <!--20170721-购物车-start -->
    <div class="sc-list">
        <!--20170721-购物车-标题-start -->
        <div class="sc-pro-title clearfix" id="shopping-cart-product-list">
            <label>
                <i class="icon-choose-normal icon-choose icon-choose-all" id="checkAll-top"></i>全选</label>
            <ul class="clearfix">
                <li>商品</li>
                <li>单价</li>
                <li>数量</li>
                <li>小计</li>
                <li>操作</li>
            </ul>
        </div>

        <!--20170721-购物车-空数据-start-->
        <div id="cart-empty-msg" class="sc-empty" style="display: none;">
            <span class="icon-minicart"></span>
            <p>您的购物车里什么也没有哦~</p>
            <a href="#">去逛逛</a>
        </div>
        <!--20170721-购物车-空数据-end-->

        <form id="cart-form" autocomplete="off" method="get">
            <input type="hidden" name="state" value="1">
            <div id="cart-list">
                <!--product-list start-->
                <div class="sc-pro">
                    <!--单品start-->
                    <div class="sc-pro-list clearfix" datavalue="2601010028706" id="order-pro-10086221210400">
                        <i class="icon-choose-normal icon-choose" id=""></i>
                        <div class="sc-pro-area " id="sc-pro-area-10086221210400">
                            <div class="sc-pro-main clearfix">
                                <!--至灰时添加class="disabled"-->
                                <a href="#" class="p-img">
                                    <img alt="华为畅享8&nbsp;Plus&nbsp;4GB+128GB&nbsp;全网通版（金色）" src="https://res.vmallres.com/pimages//product/6901443224418/142_142_1521296102232mp.jpg">
                                </a>
                                <ul>
                                    <li>
                                        <a href="#" class="p-name" title="华为畅享8&nbsp;Plus&nbsp;4GB+128GB&nbsp;全网通版（金色）" >
                                            华为畅享8&nbsp;Plus&nbsp;4GB+128GB&nbsp;全网通版（金色）
                                        </a>
                                    </li>
                                    <li>
                                        <div class="p-price">
                                            <span>¥&nbsp;1899.00</span>
                                        </div>
                                    </li>
                                    <li>
                                    <div class="p-stock">
                                        <div class="p-stock-area">
                                            <input id="quantity" type="text" class="p-stock-text" value="1">
                                            <p class="p-stock-btn" id="p-stock-btn-area">
                                                <a id="pro-quantity-plus" href="javascript:;">+</a>
                                                <a id="pro-quantity-minus" href="javascript:;" class="disabled">−</a>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                    <li class="p-price-total" id="">¥&nbsp;1899.00</li>
                                    <li>
                                        <a href="javascript:;" class="p-del" >删除</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div id="locationForEnd"></div>
    </div>
    <!-- 20170721-购物车-end -->
    <div id="center_balance" class="">
        <div id="cart-total-area" class="sc-total-tool layout clearfix ">
            <div class="sc-total-control">
                <label><i class="icon-choose-normal icon-choose icon-choose-all" id="checkAll-buttom"></i>全选</label>
                <a href="javascript:;">删除</a>
            </div>
            <div class="sc-total-btn">
                <a href="javascript:;">立即结算</a>
            </div>
            <div class="sc-total-price">
                <p>
                    <label>总计：</label>
                    <span id="sc-cartInfo-totalOriginalPrice">¥&nbsp;1899.00</span>
                </p>
            </div>
        </div>
    </div>
</div>
<!--    提示框 start -->
<%@include file="../../common/msgBox.jsp" %>
<!--    提示框 -->
</body>

</html>