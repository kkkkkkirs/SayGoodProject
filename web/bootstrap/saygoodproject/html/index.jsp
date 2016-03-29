<%@page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>好物网</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../bootstrap/saygoodproject/css/index.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <script type="text/javascript" src="../bootstrap/saygoodproject/slice-box/js/jquery.slicebox.js"></script>
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="../bootstrap/saygoodproject/slice-box/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="../bootstrap/saygoodproject/slice-box/css/slicebox.css" />
    <link rel="stylesheet" type="text/css" href="../bootstrap/saygoodproject/slice-box/css/custom.css" />

    <script type="text/javascript" src="../bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <!--兼容4.1之前的Android-->
    <script>
        $(function () {
            var nua = navigator.userAgent
            var isAndroid = (nua.indexOf('Mozilla/5.0') > -1 && nua.indexOf('Android ') > -1 && nua.indexOf('AppleWebKit') > -1 && nua.indexOf('Chrome') === -1)
            if (isAndroid) {
                $('select.form-control').removeClass('form-control').css('width', '100%')
            }
        })
        $(function(){
            function footerPosition(){
                $("footer").removeClass("fixed-bottom");
                var contentHeight = document.body.scrollHeight,//网页正文全文高度
                        winHeight = window.innerHeight;//可视窗口高度，不包括浏览器顶部工具栏
                if(!(contentHeight > winHeight)){
                    //当网页正文高度小于可视窗口高度时，为footer添加类fixed-bottom
                    $("footer").addClass("fixed-bottom");
                } else {
                    $("footer").removeClass("fixed-bottom");
                }
            }
            footerPosition();
            $(window).resize(footerPosition);
        });
    </script>
    <script type="text/javascript">
        $(function() {

            var Page = (function() {

                var $navArrows = $( '#nav-arrows' ).hide(),
                        $navDots = $( '#nav-dots' ).hide(),
                        $nav = $navDots.children( 'span' ),
                        $shadow = $( '#shadow' ).hide(),
                        slicebox = $( '#sb-slider' ).slicebox( {
                            onReady : function() {

                                $navArrows.show();
                                $navDots.show();
                                $shadow.show();

                            },
                            onBeforeChange : function( pos ) {

                                $nav.removeClass( 'nav-dot-current' );
                                $nav.eq( pos ).addClass( 'nav-dot-current' );

                            }
                        } ),

                        init = function() {

                            initEvents();

                        },
                        initEvents = function() {

                            // add navigation events
                            $navArrows.children( ':first' ).on( 'click', function() {

                                slicebox.next();
                                return false;

                            } );

                            $navArrows.children( ':last' ).on( 'click', function() {

                                slicebox.previous();
                                return false;

                            } );

                            $nav.each( function( i ) {

                                $( this ).on( 'click', function( event ) {

                                    var $dot = $( this );

                                    if( !slicebox.isActive() ) {

                                        $nav.removeClass( 'nav-dot-current' );
                                        $dot.addClass( 'nav-dot-current' );

                                    }

                                    slicebox.jump( i + 1 );
                                    return false;

                                } );

                            } );

                        };

                return { init : init };

            })();

            Page.init();

        });
    </script>
</head>

<body>

    <nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
                <li class="active"><a href="#">应届生圈 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">西部果品网</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
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
                <li><a href="#">扫码看</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">查看更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">后台管理</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="bootstrap/saygoodproject/html/about.html">关于我们</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
    <div class="container">
        <div class="wrapper">

            <ul id="sb-slider" class="sb-slider">
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/1.jpg" alt="image1"/></a>
                    <div class="sb-description">
                        <h3>Creative Lifesaver</h3>
                    </div>
                </li>
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/2.jpg" alt="image2"/></a>
                    <div class="sb-description">
                        <h3>Honest Entertainer</h3>
                    </div>
                </li>
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/3.jpg" alt="image1"/></a>
                    <div class="sb-description">
                        <h3>Brave Astronaut</h3>
                    </div>
                </li>
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/4.jpg" alt="image1"/></a>
                    <div class="sb-description">
                        <h3>Affectionate Decision Maker</h3>
                    </div>
                </li>
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/5.jpg" alt="image1"/></a>
                    <div class="sb-description">
                        <h3>Faithful Investor</h3>
                    </div>
                </li>
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/6.jpg" alt="image1"/></a>
                    <div class="sb-description">
                        <h3>Groundbreaking Artist</h3>
                    </div>
                </li>
                <li>
                    <a href="" target="_blank"><img src="../bootstrap/saygoodproject/slice-box/images/7.jpg" alt="image1"/></a>
                    <div class="sb-description">
                        <h3>Selfless Philantropist</h3>
                    </div>
                </li>
            </ul>

            <div id="shadow" class="shadow"></div>

            <div id="nav-arrows" class="nav-arrows">
                <a href="#">Next</a>
                <a href="#">Previous</a>
            </div>

            <div id="nav-dots" class="nav-dots">
                <span class="nav-dot-current"></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>

        </div><!-- /wrapper -->

    </div>
<footer >
    <jsp:include page="footer.html"></jsp:include>
</footer>

</body>
</html>