<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/common.jsp" %>
<html>
<head>
    <title>确认订单</title>
    <link rel="shortcut icon" href="${basePath}/resources/images/favicon_logo.ico">
    <link href="https://res8.vmallres.com/20180504/css/echannel/ec.core.base.min.css?20170722" rel="stylesheet"
          type="text/css">
    <link href="https://res8.vmallres.com/20180504/css/order/main.min.css?20180212" rel="stylesheet" type="text/css">
    <script src="https://res9.vmallres.com/20180504/js/common/jsapi.js?20141025" namespace="ec"></script>
    <script src="https://res9.vmallres.com/20180504/js/common/base/jquery-1.4.4.min.js"></script>
    <script src="https://res9.vmallres.com/20180504/js/common/ec.core.js?20141025"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/ec.business.min.js?20171028"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/base.min.js?20171028"></script>
    <script id="jsapi_loader0" loadtype="insert" type="text/javascript"
            src="https://res9.vmallres.com/20180504/js/common/ec.box/box-min.js"></script>
    <script src="${basePath}/resources/js/city.js"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/slider.min.js?20170426"></script>
    <script src="https://res9.vmallres.com/20180504/js/echannel/swiper.min.js?20170426"></script>
    <!--[if lt IE 9]>
    <script src="https://res9.vmallres.com/20180504/js/common/html5shiv.js"></script> <![endif]-->
</head>

<body class="wide order">
<link href="${basePath}/resources/css/confirmCart.css">
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
<!-- 2017-06-19-捷径栏-end -->


<div class="header order-header">
    <div class="layout">
        <div class="left">
            <!-- 2017-06-19-logo-文字-start -->
            <div class="logo logo-word" style="position: relative;">
                <a href="${basePath}/" title="mmall商城" style="position: absolute;left: -47px; top: -15px;">
                    <img src="${basePath}/resources/images/logo.png" style="transform:scale(0.6);" alt="mmall商城">
                </a>
                <span style="margin-left: 180px;font-family:Helvetica Neue;">确认订单</span>
            </div>
            <!-- 2017-06-19-logo-文字-end -->
        </div>


    </div>
</div>
<script type="text/javascript">$("#progress-confirm").show();</script>
<script type="text/javascript">window._to = {start: new Date()};</script>
<script type="text/javascript">document.body.className = "wide order";</script>

<div class="layout order">
    <!--订单-表单 -->
    <div>
        <!--20170717-全局提示-start -->
        <!--20170717-全局提示-end -->

        <div class="hr-20" id="order-address-hr"></div>

        <!-- 20170717-订单表单-地址-start -->
        <div class="order-detail-area order-address" id="order-address-mod" style="padding-bottom: 30px;">
            <div class="h">
                收货地址
                <a id="upAddAddressButton" href="javascript:;" onclick="openBox()"
                   class="address-add-btn" style="display: block;">新增收货地址</a>
            </div>
            <div class="order-address-list" id="order-address-list">
                <ul class="clearfix">
                    <li id="myAddress-57404645" index="57404645" class="hide current" style="display: list-item;">
                        <div class="address-supplement hide" style="display: none;">
                            <a href="javascript:;" onclick="ec.order.myAddress.edit(57404645)" class="address-add-btn">请您核实地址</a>
                        </div>
                        <span id="defaultAddress-57404645" class="address-status hide">默认地址</span>
                        <div class="address-main" onclick="ec.order.myAddress.select(this);">
                            <p class="clearfix">
                                <b id="consignee-name-57404645">热特瑞</b>
                                <span id="consignee-tel-57404645">13567890987</span>
                            </p>
                            <div class="address-detail" id="address-detail-57404645">
                                安徽&nbsp;蚌埠&nbsp;东市区&nbsp;&nbsp;玩儿翁
                            </div>
                        </div>
                        <input type="hidden" id="needL4Addr" value="false">
                        <input type="hidden" id="needModify" value="false">
                        <input type="hidden" name="streetName" value="">
                        <input type="hidden" name="myAddress" id="input-myAddress57404645" data-district="3544"
                               data-id="57404645"
                               value="57404645">
                        <div class="address-sub">
                            <a class="address-edit" href="javascript:;"
                               onclick="ec.order.myAddress.edit(57404645)">编辑</a>
                            <a class="address-del" href="javascript:;" onclick="ec.order.myAddress.del(this,57404645)">删除</a>
                            <a id="setAddress-57404645" class="address-default" href="javascript:;"
                               onclick="ec.order.myAddress.setDetault(57404645)">设为默认</a>
                        </div>
                    </li>
                    <li id="myAddress-57389079" index="57389079" class="">
                        <div class="address-supplement hide" style="display: none;">
                            <a href="javascript:;" onclick="ec.order.myAddress.edit(57389079)" class="address-add-btn">请您核实地址</a>
                        </div>
                        <span id="defaultAddress-57389079" class="address-status">默认地址</span>
                        <div class="address-main" onclick="ec.order.myAddress.select(this);">
                            <p class="clearfix">
                                <b id="consignee-name-57389079">鲁标</b>
                                <span id="consignee-tel-57389079">13720387491</span>
                            </p>
                            <div class="address-detail" id="address-detail-57389079">湖北&nbsp;武汉&nbsp;洪山区&nbsp;关山街道&nbsp;关南小区东区2栋-1202</div>
                        </div>
                        <input type="hidden" id="needL4Addr" value="false">
                        <input type="hidden" id="needModify" value="false">
                        <input type="hidden" name="streetName" value="关山街道">
                        <input type="hidden" name="myAddress" id="input-myAddress57389079" data-district="4822"
                               data-id="57389079"
                               value="57389079">
                        <div class="address-sub">
                            <a class="address-edit" href="javascript:;"
                               onclick="ec.order.myAddress.edit(57389079)">编辑</a>
                            <a class="address-del" href="javascript:;" onclick="ec.order.myAddress.del(this,57389079)">删除</a>
                            <a id="setAddress-57389079" class="address-default hide" href="javascript:;"
                               onclick="ec.order.myAddress.setDetault(57389079)">设为默认</a>
                        </div>
                    </li>
                    <li id="myAddress-57404623" index="57404623">
                        <div class="address-supplement hide" style="display: none;">
                            <a href="javascript:;" onclick="ec.order.myAddress.edit(57404623)" class="address-add-btn">请您核实地址</a>
                        </div>
                        <span id="defaultAddress-57404623" class="address-status hide">默认地址</span>
                        <div class="address-main" onclick="ec.order.myAddress.select(this);">
                            <p class="clearfix">
                                <b id="consignee-name-57404623">扔掉</b>
                                <span id="consignee-tel-57404623">15899999999</span>
                            </p>
                            <div class="address-detail" id="address-detail-57404623">北京&nbsp;北京&nbsp;东城区&nbsp;景山街道&nbsp;发送到</div>
                        </div>
                        <input type="hidden" id="needL4Addr" value="false">
                        <input type="hidden" id="needModify" value="false">
                        <input type="hidden" name="streetName" value="景山街道">
                        <input type="hidden" name="myAddress" id="input-myAddress57404623" data-district="6922"
                               data-id="57404623"
                               value="57404623">
                        <div class="address-sub">
                            <a class="address-edit" href="javascript:;"
                               onclick="ec.order.myAddress.edit(57404623)">编辑</a>
                            <a class="address-del" href="javascript:;" onclick="ec.order.myAddress.del(this,57404623)">删除</a>
                            <a id="setAddress-57404623" class="address-default" href="javascript:;"
                               onclick="ec.order.myAddress.setDetault(57404623)">设为默认</a>
                        </div>
                    </li>
                    <li id="myAddress-57404633" index="57404633" style="display: list-item;">
                        <div class="address-supplement hide" style="display: none;">
                            <a href="javascript:;" onclick="ec.order.myAddress.edit(57404633)" class="address-add-btn">请您核实地址</a>
                        </div>
                        <span id="defaultAddress-57404633" class="address-status hide">默认地址</span>
                        <div class="address-main" onclick="ec.order.myAddress.select(this);">
                            <p class="clearfix">
                                <b id="consignee-name-57404633">不过不是个</b>
                                <span id="consignee-tel-57404633">13577777777</span>
                            </p>
                            <div class="address-detail" id="address-detail-57404633">北京&nbsp;北京&nbsp;东城区&nbsp;景山街道&nbsp;v发</div>
                        </div>
                        <input type="hidden" id="needL4Addr" value="false">
                        <input type="hidden" id="needModify" value="false">
                        <input type="hidden" name="streetName" value="景山街道">
                        <input type="hidden" name="myAddress" id="input-myAddress57404633" data-district="6922"
                               data-id="57404633"
                               value="57404633">
                        <div class="address-sub">
                            <a class="address-edit" href="javascript:;"
                               onclick="ec.order.myAddress.edit(57404633)">编辑</a>
                            <a class="address-del" href="javascript:;" onclick="ec.order.myAddress.del(this,57404633)">删除</a>
                            <a id="setAddress-57404633" class="address-default" href="javascript:;"
                               onclick="ec.order.myAddress.setDetault(57404633)">设为默认</a>
                        </div>
                    </li>
                    <li id="address-empty" class="hide" style="display: none;">
                        <div class="address-empty">
                            <a href="javascript:;" class="address-add-btn" onclick="ec.order.myAddress.add()">新增收货地址</a>
                        </div>
                    </li>
                </ul>
            </div>
            <input name="orderDistrict" id="order-district" type="hidden" value="3544">
        </div>
        <!--20170717-订单表单-地址-end -->

        <div class="hr-10"></div>


        <div class="hr-10"></div>
        <div class="order-detail-area">
            <div class="order-detail clearfix" id="order-pro-list">
                <div class="order-list" style="width:1080px;min-height: 140px;">
                    <c:forEach var="orderItem" items="${cartVo.cartProductVoList}">
                        <c:if test="${orderItem.productChecked eq 1}">
                            <div class="order-list-detail">
                                <div class="order-main clearfix ">
                                    <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                    <a style="cursor:default" class="p-img">
                                        <img alt="${orderItem.productName}${orderItem.productSubtitle}"
                                             src="${cartVo.imageHost}${orderItem.productMainImage}">
                                    </a>
                                    <ul class="">
                                        <li>
                                            <a style="cursor:default;margin-left:-300px;" class="p-name"
                                               title="${orderItem.productName}${orderItem.productSubtitle}">${orderItem.productName}${orderItem.productSubtitle}</a>
                                        </li>
                                        <li>x ${orderItem.quantity}</li>
                                        <li class="p-price">
                                            ¥&nbsp;${orderItem.productTotalPrice}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>

                </div>
            </div>

        </div>
        <div class="hr-10"></div>
        <div class="order-detail-area clearfix">
            <div class="order-submit">
                <!-- 20170718-订单提交-start -->
                <div class="order-submit-info" style="min-height: 40px;">
                    <div class="order-submit-price">应付总额：
                        <b>¥
                            <span id="payableTotal">${cartVo.cartTotalPrice}</span>
                        </b>
                    </div>
                </div>
                <div class="clearfix">
                    <a href="javascript:;" class="order-submit-btn" onclick="confirmCart()">
                        <span>提交订单</span>
                    </a>
                </div>
            </div>
            <!-- 20170718-订单提交-end -->
            <script>
                function confirmCart() {
                    var productIds = [];
                    $('input[name="productId"]').each(function () {
                        productIds.push($(this).val());
                    });
                    alert(productIds);
                }

            </script>
        </div>
    </div>

    <div class="hr-45"></div>
</div>

<!-- start 添加model -->
<div class="ol_box_mask" style="visibility: hidden; width: 1348px; height: 1800px; z-index: 500;"></div>
<div id="myAddress-add-new-box" class="ol_box_4"
     style="visibility: hidden; position: fixed; top: 50%; left: 50%; margin-left:-400px;margin-top:-210px;z-index: 500; width: 800px; height: 420px;">
    <div class="box-ct">
        <div class="box-header">
            <div class="box-tl"></div>
            <div class="box-tc">
                <div class="box-tc1"></div>
                <div class="box-tc2">
                    <a href="javascript:;" title="关闭" class="box-close" onclick="closeBox()"></a>
                    <span class="box-title">添加地址</span>
                </div>
                <script>
                    function closeBox() {
                        $("#myAddress-add-new-box").css('visibility', 'hidden');
                        $(".ol_box_mask").css('visibility', 'hidden');
                    }

                    function openBox() {
                        $("#myAddress-add-new-box").css('visibility', 'visible');
                        $(".ol_box_mask").css('visibility', 'visible');
                    }
                </script>
            </div>
            <div class="box-tr"></div>
        </div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
            <tbody>
            <tr>
                <td class="box-cl"></td>
                <td class="box-cc">
                    <div class="box-content" style="height: auto;">
                        <div id="order-address-add-area">
                            <div class="form-edit-panels">
                                <div class="form-edit-area">
                                    <div class="form-edit-table form-edit-table-address">
                                        <table cellspacing="0" cellpadding="0" border="0">
                                            <tbody>
                                            <tr>
                                                <th><label>收货人：</label></th>
                                                <td>
                                                    <input type="text" class="text vam span-574" name="consignee"
                                                           value="" validator="validator261525961349027"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="vat" rowspan="2">
                                                    <label>收货地址：</label>
                                                </th>
                                                <td class="relative">
                                                    <!--以下内容隐藏时添加class="hide"，显示去掉class="hide"-->
                                                    <div class="form-address">
                                                        <%--<div id="current-address" class="form-address-detail">
                                                        选择省-市-区-街道
                                                        </div>--%>
                                                        <select id="province" style="width:48%;">
                                                            <option value="0">选择省</option>
                                                        </select>
                                                        <select id="city" style="width:48%;">
                                                            <option value="0">选择市</option>
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="tr-rel">
                                                <td>
                                                    <textarea name="address" class="textarea span-574"
                                                              style="z-index: 1;"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <label>手机号码：</label>
                                                </th>
                                                <td>
                                                    <div class="vam inline-block">
                                                        <input type="text" class="text  span-229 ime-disabled"
                                                               name="mobile"
                                                               value="" id="input_label_17" style="z-index: 1;">
                                                    </div>
                                                    <label class="vam" styl="margin-left:2px;">&nbsp;固定电话：&nbsp;</label>
                                                    <div class="vam inline-block">
                                                        <input type="text" name="phone" value=""
                                                               class="text  span-229 ime-disabled" style="z-index: 1;">
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="box-button">
                                <a class="box-ok" href="javascript:;">
                                    <span>保存并使用</span></a>
                                <a class="box-cancel" onclick="closeBox()">
                                    <span>取消</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="box-button" style="display: none;"><a class="box-ok" href="javascript:;"><span>确定</span></a>
                        <a class="box-cancel" href="javascript:;"><span>取消</span></a></div>
                </td>
                <td class="box-cr"></td>
            </tr>
            </tbody>
        </table>

    </div>
</div>
<!-- end 添加model-->
<script>
    var province = _cities.getProvinces();
    for (var i = 0; i < province.length; i++) {
        var $province = $('#province');
        $province.html($province.html() + "<option value='"+province[i]+"'>"+province[i]+"</option>");
    }

    $('#province').change(function(){
        var cities = _cities.getCities($(this).val());
        $('#city').html("<option value=\"0\">选择市</option>");
        for (var i = 0; i < cities.length; i++) {
            var $city = $('#city');
            $city.html($city.html() + "<option value='"+cities[i]+"'>"+cities[i]+"</option>");
        }
    });


</script>
</body>

</html>
