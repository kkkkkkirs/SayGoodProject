<%@page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>好物网-扫码付</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/bootstrap/dist/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/bootstrap/saygoodproject/css/index.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="/bootstrap/saygoodproject/js/jquery-1.12.1.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/jquery.slicebox.js"></script>
    <link rel="shortcut icon" href="/bootstrap/saygoodproject/images/haowuicon2.png">
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/slicebox.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/custom.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/css/scanview.css"/>

    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <!--兼容4.1之前的Android-->
    <script>
        $(function () {
            var nua = navigator.userAgent
            var isAndroid = (nua.indexOf('Mozilla/5.0') > -1 && nua.indexOf('Android ') > -1 && nua.indexOf('AppleWebKit') > -1 && nua.indexOf('Chrome') === -1)
            if (isAndroid) {
                $('select.form-control').removeClass('form-control').css('width', '100%')
            }
        });
    </script>
    <style type="text/css">
        /* Custom Styles */
        ul.nav-tabs {
            width: 140px;
            margin-top: 20px;
            border-radius: 4px;
            border: 1px solid #ddd;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
        }

        ul.nav-tabs li {
            margin: 0;
            border-top: 1px solid #ddd;
        }

        ul.nav-tabs li:first-child {
            border-top: none;
        }

        ul.nav-tabs li a {
            margin: 0;
            padding: 8px 16px;
            border-radius: 0;
        }

        ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover {
            color: #fff;
            background: #0088cc;
            border: 1px solid #0088cc;
        }

        ul.nav-tabs li:first-child a {
            border-radius: 4px 4px 0 0;
        }

        ul.nav-tabs li:last-child a {
            border-radius: 0 0 4px 4px;
        }

        ul.nav-tabs.affix {
            top: 10px; /* Set the top position of pinned element */
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myNav").affix({
                offset: {
                    top: 125
                }
            });
        });
    </script>
</head>

<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">好物网</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">应届生圈 <span class="sr-only">(current)</span></a></li>
                <li><a href="/bootstrap/saygoodproject/html/index.jsp">西部果品网</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">GO</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">圈内</a></li>
                <li class="active"><a href="/bootstrap/saygoodproject/html/scanview.jsp">扫码看</a></li>
                <li><a href="/bootstrap/saygoodproject/html/login_sign.html">登录 | 注册</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">查看更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">后台管理</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/bootstrap/saygoodproject/html/about.html">关于我们</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
    <div class="container">
        <table class="table table-hover table-content">
            <thead>
            <tr>
                <th>编号</th>
                <th>标题</th>
                <th>内容简介</th>
                <th>发布者</th>
                <th>扫二维码查看详情</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="filterable-cell">1</td>
                <td class="filterable-cell">回龙观租房</td>
                <td class="filterable-cell">刚毕业的同学注意了,回龙观房价2016年一月份之后普遍上涨500元,租房一族要做好准备……</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="table-td-last"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">2</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">3</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell">本条免费</td>
            </tr>
            <tr>
                <td class="filterable-cell">4</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">5</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">6</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">7</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">8</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">9</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">10</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">11</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">12</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">13</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">14</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">15</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">16</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">17</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">18</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">20</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">21</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">22</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">23</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">24</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">25</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">26</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">27</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            <tr>
                <td class="filterable-cell">28</td>
                <td class="filterable-cell">Escort</td>
                <td class="filterable-cell">Blue</td>
                <td class="filterable-cell">北漂的一条鱼</td>
                <td class="filterable-cell"><img style="width: 150px;height: 150px"
                                                 src="/bootstrap/saygoodproject/images/zxing.png"></td>
            </tr>
            </tbody>
        </table>
    </div>
<div class="fixed-bottom">
    <footer>
        <jsp:include page="/bootstrap/saygoodproject/html/footer.html"></jsp:include>
    </footer>
</div>
</body>
</html>