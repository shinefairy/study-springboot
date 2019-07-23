<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" href="/images/logo.jpg" type="image/x-icon" />
    <link rel="shortcut icon" href="/images/logo.jpg" type="image/x-icon" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <a href="javascript:;" class="layui-hide-xs"><a href="/home" style="font-weight: bold;"><div class="layui-logo">后台管理系统</div></a>
        </a>
        <a href="javascript:;" class="layui-hide-xs">
            <div class="switchMenu" style="display: none;"><i class="fa fa-indent"></i></div>
        </a>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="/images/logo.jpg" class="layui-nav-img"></img>
                    <@shiro.user>
                        <@shiro.principal property="sysUserName"/>
                    </@shiro.user>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" onclick="addTab(this);" tab_url="http://www.baidu.com">基本资料</a></dd>
                    <dd id="updUsePwdDd" class="layui-this"><a href="javascript:;" onclick="updateUsePwd();">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/user/logout">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">基本信息</a>
                    <dl class="layui-nav-child">
                        <dd class="layui-this">
                            <a href="javascript:;" >基本信息</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">开源作品</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" class="layTabPlus" tab_url="https://gitee.com/Leytton/ThinkJD">
                                <i class="layui-icon layui-icon-star"> </i>
                                ThinJDBC
                            </a>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="layTabPlus" tab_url="https://gitee.com/Leytton/SimJQ">SimJQ</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="layTabPlus" tab_url="https://gitee.com/Leytton/layTabPlus" tab_jump="true">layTabPlus</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">关于作者</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:void(0);" class="layTabPlus" tab_url="http://www.llqqww.com">网站</a></dd>
                        <dd><a href="javascript:void(0);" class="layTabPlus" tab_url="https://blog.csdn.net/leytton">博客</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">其它</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:void(0);" class="layTabPlus" tab_url="http://www.llqqww.com">网站</a></dd>
                        <dd><a href="javascript:void(0);" class="layTabPlus" tab_url="https://blog.csdn.net/leytton">博客</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:void(0);" class="layTabPlus" tab_url="https://blog.csdn.net/leytton">CSDN</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div class="layui-tab" lay-filter="demoTab" lay-allowClose="true">
            <ul class="layui-tab-title">
                <li class="layui-this noclose" lay-id='base_info'>基本信息</li>
            </ul>
            <div class="layui-tab-content" style="padding:0px;">
                <div class="layui-tab-item layui-show">
                    <div class="sysNotice col">
                        <blockquote class="layui-elem-quote title">基本信息</blockquote>
                        <table class="layui-table">
                            <tbody>
                            <tr>
                                <td>当前版本</td>
                                <td class="version">V1.2</td>
                            </tr>
                            <tr>
                                <td>开发作者</td>
                                <td class="author">Leytton</td>
                            </tr>
                            <tr>
                                <td>项目首页</td>
                                <td class="homePage"><a href="https://gitee.com/Leytton/layTabPlus">https://gitee.com/Leytton/layTabPlus</a></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <script src='https://gitee.com/Leytton/layTabPlus/widget_preview'></script>
                                    <style>
                                        .pro_name a{color: #4183c4;}
                                        .osc_git_title{background-color: #fff;}
                                        .osc_git_box{background-color: #fff;}
                                        .osc_git_box{border-color: #E3E9ED;}
                                        .osc_git_info{color: #666;}
                                        .osc_git_main a{color: #9B9B9B;}
                                    </style>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-footer">
        © 2018 <a href="https://gitee.com/Leytton/layTabPlus">layTabPlus</a> - by Leytton
    </div>
</div>
</body>
<script type="text/javascript" src="/layui/layui.js"></script>
<script>

    layui.use([ 'element', 'layer', 'jquery'], function () {
        var　layer = layui.layer;
             element = layui.element;
                  $ = layui.jquery;

    });
</script>
</html>