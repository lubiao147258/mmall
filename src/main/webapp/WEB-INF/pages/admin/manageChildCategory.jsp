<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/common.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="${basePath}/resources/images/favicon_logo.ico">
    <title>分类管理</title>
    <link href="${basePath}/resources/css/style.min.css" rel="stylesheet">
    <link href="${basePath}/resources/css/style.css" rel="stylesheet">
    <link href="${basePath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/resources/css/simple-line-icons.css" rel="stylesheet">
    <script src="${basePath}/resources/js/libs/jquery-2.1.4.min.js"></script>
    <script src="${basePath}/resources/js/libs/bootstrap.min.js"></script>
    <script src="${basePath}/resources/js/require.js"></script>
    <script src="${basePath}/resources/js/main.js"></script>
    <!- -[if lt IE]>
    <script src="${basePath}/resources/js/libs/respond.min.js"></script>
    <script src="${basePath}/resources/js/libs/html5shiv.min.js"></script>
    <![endif]- ->
    <script>
        $(document).ready(function() {
            //显示查询条件
            var typeCondition = $('#statusInput').val();
            $('#status').val(typeCondition);

            $("#status").change(function(){
                $("#searchForm").submit();
            });

        });
        function resett(){
            $("#categoryName").val("");
            $("#status").val("");
        }

        //时间格式化函数
        Date.prototype.Format = function (fmt) {
            var o = {
                "M+": this.getMonth() + 1, //月份
                "d+": this.getDate(), //日
                "H+": this.getHours(), //小时
                "m+": this.getMinutes(), //分
                "s+": this.getSeconds(), //秒
                "S": this.getMilliseconds() //毫秒
            };
            if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
            for (var k in o)
                if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            return fmt;
        }
    </script>
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
<header class="app-header navbar">
    <%--<button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up" type="button"></button>
    <a class="navbar-brand" href="#"></a>--%>
    <ul class="nav navbar-nav hidden-md-down">
        <li class="nav-item">
            <span class=" navbar-toggler" style="margin-left:30px;color: #FFF;line-height: 2;font-size: 16px;font-weight: bold;">后台管理</span>
        </li>
        <li class="nav-item">
            <a class="nav-link navbar-toggler sidebar-toggler" href="#">☰</a>
        </li>
    </ul>
    <ul class="nav navbar-nav ml-auto mr-sm-3">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button"
               aria-haspopup="true" aria-expanded="false">
                <%--<img src="images/header_user.jpg" class="img-avatar" alt="头像">--%>
                <span class="hidden-md-down">Admin</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="#"><i class="fa fa-user"></i> 个人资料</a>
                <a class="dropdown-item" href="login.html"><i class="fa fa-reply-all"></i> 退出</a>
            </div>
        </li>

    </ul>
</header>

<div class="app-body">
    <div class="sidebar">
        <nav class="sidebar-nav">
            <ul class="nav">
                <li class="nav-item text-center">
                    <a class="nav-link" href="#"><i class="fa fa-leanpub"></i> 你好，管理员</a>
                </li>
                <li class="nav-title"></li>
                <li class="nav-item">
                    <a class="nav-link" href="${basePath}/manage/user"><i class="fa fa-user"></i> 用户管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#"><i class="icon-pie-chart"></i> 分类管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="icon-notebook"></i> 商品管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="icon-wrench"></i> 个人中心</a>
                </li>
            </ul>
        </nav>
    </div>

    <!-- Main content -->
    <main class="main">

        <!-- Breadcrumb -->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">Home</li>
            <li class="breadcrumb-item">Admin</li>
            <li class="breadcrumb-item active"><a href="${basePath}/manage/category">分类管理</a></li>
        </ol>

        <div class="container-fluid" >
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-content" style="padding-bottom:7px;">
                            <div id="forSearch">
                                <form action="${basePath}/manage/childCategory" method="post" id="searchForm">
                                        <input type="hidden" name="preCategoryId" id="hiddenId" value="${preCategoryId}"/>
                                        <input type="hidden" id="pageNum" name="pageNum" value="1">
                                    <ul class="form-inline">
                                        <li class="form-group">
                                            <label>类别名称:</label>
                                            <input type="text" id="categoryName" name="categoryName" class="form-control" value="${categoryName}" placeholder="根据用户名称搜索">
                                        </li>
                                        <li class="form-group">
                                            <label>状态:</label>
                                            <input type="hidden" value="${status}" id="statusInput">
                                            <select type="text" id="status" name="status" class="form-control ">
                                                <option value="">所有状态</option>
                                                <option value="1">正常</option>
                                                <option value="0">已失效</option>
                                            </select>
                                        </li>
                                        <li class="form-group-btn" >
                                            <button  type="button" class="btn btn-warning" onclick="resett()">重置</button>
                                            <input type="submit" class="btn btn-primary" value="搜索"/>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div style="height: 10px;weight:100%;"></div>
                            <div class="card-header">
                                <i class="fa fa-code"></i> <a href="${basePath}/manage/category"><b>分类管理 </b></a> / 当前类别：${category.name}
                                <button type="button" class="btn btn-primary float-right" data-toggle="modal"
                                        data-target="#myModal">添加分类
                                </button>
                                <div style="height: 10px;weight:100%;"></div>
                            </div>
                            <div class="card-block">
                                <c:if test="${!empty page.list}">
                                <table class="table user-table table-striped">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>类别名称</th>
                                        <th>状态</th>
                                        <th>创建时间</th>
                                        <th>更新时间</th>
                                        <th style="text-align: center">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="categoryListVoList" items="${page.list}" varStatus="varStatus">
                                        <tr>
                                            <td>${varStatus.index+1 + (page.pageNum - 1) * page.pageSize}</td>
                                            <td class="d">${categoryListVoList.name}</td>
                                            <td>
                                                <c:if test="${categoryListVoList.status eq true}">正常</c:if>
                                                <c:if test="${categoryListVoList.status eq false}">已失效</c:if>
                                            </td>
                                            <td><fmt:formatDate value="${categoryListVoList.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            <td><fmt:formatDate value="${categoryListVoList.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            <td>
                                                <button class="badge badge-edit">编辑</button>
                                                <%--<button class="badge badge-star">删除</button>--%>
                                                <button class="badge badge-pwd">删除</button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                </c:if>
                                <script type="text/javascript">
                                    $('.d').html(function(i,oldHTML){
                                        return oldHTML.replace(/${categoryName}/g,'<font color="red">${categoryName}</font>');
                                    })
                                </script>
                                <c:if test="${empty page.list}">
                                    <div style="width:100%;height:50px;text-align: center;line-height: 50px;">
                                        <span>还没有子类呢 ( ^ _ ^ )</span>
                                    </div>
                                </c:if>
                                <c:if test="${!empty page.list}">
                                    <div class="up-clearfix">
                                        <div class="up-pull-right">
                                            <%@include file="../../common/page.jsp"%>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
</div>

<!--    提示框 start -->
<%@include file="../../common/msgBox.jsp"%>
<!--    提示框 -->
<script src="${basePath}/resources/js/index.js"></script>
<script src="${basePath}/resources/js/formgroup.js"></script>


</body>
</html>
