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
    <title>添加商品</title>
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
                    <a class="nav-link " href="${basePath}/manage/user"><i class="fa fa-user"></i> 用户管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${basePath}/manage/category"><i class="icon-pie-chart"></i> 分类管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="${basePath}/manage/product"><i class="icon-notebook"></i> 商品管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="icon-settings"></i> 个人中心</a>
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
            <li class="breadcrumb-item active">添加商品</li>
        </ol>

        <div class="container-fluid">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-content">
                            <div class="card-content-top">
                                <div class="card-content-top-left" style="height: 30px;">
                                    <span style="color:#3598DB;font-size: 15px;">&nbsp;&nbsp; <i class="fa fa-code"></i> <b>添加商品</b></span>
                                </div>
                                <div class="card-content-top-right">
                                    <!-- <button class="btn btn-primary">提交</button> -->
                                </div>
                            </div><hr style="margin-top: 0;"/>
                            <div class="card-content-main">
                                <form class="up-form-inline" id="searchForm">
                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label"> 商品分类:</label>
                                        <div class="col-md-3">
                                            <select type="text" class="form-control" id="parCategory" name="">
                                                <option value="-1">请选择</option>
                                                <c:forEach var="mainCategory" items="${categoryListVoList}">
                                                    <option value="${mainCategory.id}">${mainCategory.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <select type="text" class="form-control" id="childCategory" name="">
                                                <option value='-1'>请选择</option>
                                            </select>
                                        </div>
                                        <script>
                                            $("#parCategory").change(function(){

                                                var parentId = $(this).val();

                                                $.ajax({
                                                    type : 'POST',
                                                    url : '${basePath}/manage/category/get_category.do',
                                                    data : {
                                                        "categoryId" : parentId
                                                    },
                                                    dataType : 'json',

                                                    success : function(data) {
                                                        $("#childCategory").html("");
                                                        $("#childCategory").html("<option value='-1'>请选择</option>");
                                                        //alert(data.data[0].id);
                                                        for(var i =0 ; i < data.data.length ; i++ ){
                                                            $("#childCategory").html($("#childCategory").html() + "<option value='"+ data.data[i].id+"'>"+data.data[i].name+"</option>");
                                                        }
                                                    },
                                                    error : function(data) {
                                                        $("#msgBoxInfo").html("服务器错误");
                                                        $("#msgBox").modal('show');
                                                    }
                                                });
                                            });
                                        </script>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label"> 商品名称:</label>
                                        <div class="col-md-11">
                                            <textarea rows="5" type="text" id="" name="noticeTitle" class="check-input form-control" placeholder="商品名称" value=""></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label"> 副标题:</label>
                                        <div class="col-md-11">
                                            <textarea rows="5" type="text" id="" name="noticeTitle" class="check-input form-control" placeholder="商品副标题" value=""></textarea>
                                        </div>
                                    </div>
                                </form>

                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label"> 公告内容:</label>
                                    <div class="col-md-10">
                                        springmvc上传文件
                                        <form name="form1" action="/mmall/manage/product/upload.do" method="post" enctype="multipart/form-data">
                                            <input type="file" name="upload_file" />
                                            <input type="submit" value="springmvc上传文件" />
                                        </form>


                                        富文本图片上传文件
                                        <form name="form2" action="/mmall/manage/product/richtext_img_upload.do" method="post" enctype="multipart/form-data">
                                            <input type="file" name="upload_file" />
                                            <input type="submit" value="富文本图片上传文件" />
                                        </form>
                                    </div>
                                </div>
                                <ul class="form-inline">
                                    <li class="form-group-btn" >
                                        <button  type="button" class="btn btn-warning" onclick="reset()">重置</button>
                                        <button  type="button" class="btn btn-primary" onclick="addNotice()" id="addNoticeBtn">提交</button>
                                    </li>
                                </ul>
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
