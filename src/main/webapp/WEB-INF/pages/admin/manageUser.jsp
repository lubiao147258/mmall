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
    <title>用户管理</title>
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
            var typeCondition = $('#roleInput').val();
            $('#role').val(typeCondition);

            $("#role").change(function(){
                $("#searchForm").submit();
            });

        });
        function resett(){
            $("#username").val("");
            $("#role").val("");
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
                    <a class="nav-link active" href="#"><i class="fa fa-user"></i> 用户管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${basePath}/manage/category"><i class="icon-pie-chart"></i> 分类管理</a>
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
            <li class="breadcrumb-item active"><a href="#">用户管理</a></li>
        </ol>

        <div class="container-fluid" >
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-content" style="padding-bottom:7px;">
                            <div id="forSearch">
                                <form action="${basePath}/manage/user" method="post" id="searchForm">
                                        <input type="hidden" id="pageNum" name="pageNum" value="1">
                                    <ul class="form-inline">
                                        <li class="form-group">
                                            <label>用户名:</label>
                                            <input type="text" id="username" name="username" class="form-control" value="${username}" placeholder="根据用户名称搜索">
                                        </li>
                                        <li class="form-group">
                                            <label>角色类型:</label>
                                            <input type="hidden" value="${role }" id="roleInput">
                                            <select type="text" id="role" name="role" class="form-control ">
                                                <option value="">所有用户</option>
                                                <option value="0">普通用户</option>
                                                <option value="1">管理员</option>
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
                            <div class="card-header">
                                <i class="fa fa-code"></i> 用户管理
                                <%--<button type="button" class="btn btn-success float-right" data-toggle="modal"
                                        data-target="#myModal">添加用户
                                </button>--%>
                            </div>
                            <div class="card-block">
                                <table class="table user-table table-striped">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>用户名</th>
                                        <th>邮箱</th>
                                        <th>电话</th>
                                        <th>问题</th>
                                        <%--<th>答案</th>--%>
                                        <th>角色</th>
                                        <th style="text-align: center">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="userList" items="${page.list}" varStatus="varStatus">
                                        <tr>
                                            <td>${varStatus.index+1 + (page.pageNum - 1) * page.pageSize}</td>
                                            <td class="d">${userList.username}</td>
                                            <td>${userList.email}</td>
                                            <td>${userList.phone}</td>
                                            <td>${userList.question}</td>
                                            <td>
                                                <c:if test="${userList.role eq 0}">普通用户</c:if>
                                                <c:if test="${userList.role eq 1}"><font color="red">管理员</font></c:if>
                                            </td>
                                            <td>
                                                <%--<button class="badge badge-edit">编辑</button>--%>
                                                <c:if test="${userList.role eq 0}">
                                                    <button class="badge badge-pwd" onclick="setOrCancleAdminRole(${userList.id})">设为管理员</button>
                                                </c:if>
                                                <c:if test="${userList.role eq 1}">
                                                    <button class="badge badge-pwd" onclick="setOrCancleAdminRole(${userList.id})">取消管理员</button>
                                                </c:if>
                                                <%--<button class="badge badge-star">重置密码</button>--%>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <script type="text/javascript">
                                    $('.d').html(function(i,oldHTML){
                                        return oldHTML.replace(/${username}/g,'<font color="red">${username}</font>');
                                    })
                                </script>
                                <script>
                                    function setOrCancleAdminRole(id){
                                        $("#msgBoxConfirmInfo").html("确定要修改角色信息吗？");
                                        $("#msgBoxConfirm").modal('show');
                                        $("#msgBoxConfirmButton").on('click' , function(){//点击确认按钮时执行下面的方法

                                            $.ajax({
                                                type : 'POST',
                                                url : '${basePath}/manage/user/setOrCancleAdminRole',
                                                data : {
                                                    'userId' : id
                                                },
                                                dataType : 'json',
                                                success : function(data) {
                                                    if (data.status == 0) {
                                                        $("#msgBoxConfirm").modal('hide');
                                                        $("#msgBoxInfo").html(data.msg);
                                                        $("#msgBox").modal('show');
                                                        $("#msgBoxOKButton").on('click' , function(){
                                                            parent.window.location.reload();
                                                        });
                                                    } else {
                                                        $("#msgBoxConfirm").modal('hide');
                                                        $("#msgBoxInfo").html(data.msg);
                                                        $("#msgBox").modal('show');
                                                        $("#msgBoxOKButton").on('click' , function(){
                                                            $("#msgBox").modal('hide');
                                                            //parent.window.location.reload();
                                                        });
                                                    }
                                                },
                                                error : function(data) {
                                                    $("#msgBoxInfo").html("服务器错误");
                                                    $("#msgBox").modal('show');
                                                }
                                            });
                                        });
                                    }
                                </script>
                                <div class="up-clearfix">
                                    <div class="up-pull-right">
                                        <%@include file="../../common/page.jsp"%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
</div>

<!-- /.modal-content -->
<%--<div class="modal animate-fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="myModalLabel">添加用户</h6>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <div class="card-block">
                    <form action="" method="post" enctype="multipart/form-data" class="form-horizontal ">
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label">账号</label>
                            <div class="col-md-10">
                                <input type="text" id="user_name" class="check-input form-control"
                                       aria-label="用户名（包含字母／数字／下划线）" placeholder="6-20个字符">
                                <div class="hint">*请填写6-20个字符的账号</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label">姓名</label>
                            <div class="col-md-10">
                                <input type="text" id="name" class="check-input form-control" aria-label="用户名（包含字母／数字／下划线）"
                                       placeholder="姓名">
                                <div class="hint">*请填写4-20个字符的姓名</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label" for="select">性别</label>
                            <div class="col-md-10">
                                <select id="select" name="select" class="form-control">
                                    <option value="0">请选择</option>
                                    <option value="1">男</option>
                                    <option value="2">女</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label" for="class-input">部门</label>
                            <div class="col-md-10">
                                <button id="class-input" class="btn btn-primary">部门</button>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label" for="select1">技术方向</label>
                            <div class="col-md-10">
                                <select id="select1" name="select" class="form-control">
                                    <option value="0">请选择</option>
                                    <option value="1">java</option>
                                    <option value="2">C++</option>
                                    <option value="3">测试</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label" for="select2">岗位评定</label>
                            <div class="col-md-10">
                                <select id="select2" name="select" class="form-control">
                                    <option value="0">请选择</option>
                                    <option value="1">未评定</option>
                                    <option value="2">1级</option>
                                    <option value="3">2级</option>
                                    <option value="4">3级</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label">电话</label>
                            <div class="col-md-10">
                                <input type="text" id="phone" class="check-input form-control" placeholder="电话">
                                <div class="hint">请填写手机号</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label">邮箱</label>
                            <div class="col-md-10">
                                <input type="text" id="user_email" class="check-input form-control" placeholder="邮箱">
                                <div class="hint">请填写邮箱</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label">管理员</label>
                            <div class="col-md-10 from-radio">
                                <label class="radio-inline" for="inline-radio1">
                                    <input type="radio" id="inline-radio1" name="inline-radios" value="option1">管理员
                                </label>
                                <label class="radio-inline" for="inline-radio2">
                                    <input type="radio" id="inline-radio2" name="inline-radios" value="option2">老师
                                </label>
                                <label class="radio-inline" for="inline-radio3">
                                    <input type="radio" id="inline-radio3" name="inline-radios" value="option3">学生
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 form-control-label" for="manage-input">试题分类权限</label>
                            <div class="col-md-10">
                                <button id="manage-input" class="btn btn-primary">试题类型</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">确认</button>
            </div>
        </div>
    </div>
</div>--%>
<!--    提示框 start -->
<%@include file="../../common/msgBox.jsp"%>
<!--    提示框 -->
<script src="${basePath}/resources/js/index.js"></script>
<script src="${basePath}/resources/js/formgroup.js"></script>


</body>
</html>
