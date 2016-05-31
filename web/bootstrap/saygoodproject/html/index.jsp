<%@page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>好物网</title>

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
    <link rel="shortcut icon" href="/bootstrap/saygoodproject/images/haowuicon.png">
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/slicebox.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/custom.css"/>

    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <!--兼容4.1之前的Android-->
    <script>
        $(function () {
            var nua = navigator.userAgent
            var isAndroid = (nua.indexOf('Mozilla/5.0') > -1 && nua.indexOf('Android ') > -1 && nua.indexOf('AppleWebKit') > -1 && nua.indexOf('Chrome') === -1)
            if (isAndroid) {
                $('select.form-control').removeClass('form-control').css('width', '100%')
            }
        })
        $(function () {
            function footerPosition() {
                $("footer").removeClass("fixed-bottom");
                var contentHeight = document.body.scrollHeight,//网页正文全文高度
                        winHeight = window.innerHeight;//可视窗口高度，不包括浏览器顶部工具栏
                if (!(contentHeight > winHeight)) {
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
        $(function () {

            var Page = (function () {

                var $navArrows = $('#nav-arrows').hide(),
                        $navDots = $('#nav-dots').hide(),
                        $nav = $navDots.children('span'),
                        $shadow = $('#shadow').hide(),
                        slicebox = $('#sb-slider').slicebox({
                            onReady: function () {

                                $navArrows.show();
                                $navDots.show();
                                $shadow.show();

                            },
                            onBeforeChange: function (pos) {

                                $nav.removeClass('nav-dot-current');
                                $nav.eq(pos).addClass('nav-dot-current');

                            }
                        }),

                        init = function () {

                            initEvents();

                        },
                        initEvents = function () {

                            // add navigation events
                            $navArrows.children(':first').on('click', function () {

                                slicebox.next();
                                return false;

                            });

                            $navArrows.children(':last').on('click', function () {

                                slicebox.previous();
                                return false;

                            });

                            $nav.each(function (i) {

                                $(this).on('click', function (event) {

                                    var $dot = $(this);

                                    if (!slicebox.isActive()) {

                                        $nav.removeClass('nav-dot-current');
                                        $dot.addClass('nav-dot-current');

                                    }

                                    slicebox.jump(i + 1);
                                    return false;

                                });

                            });

                        };

                return {init: init};

            })();

            Page.init();

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

<body data-spy="scroll" data-target="#myScrollspy">

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
                <li class="active"><a href="#">西部果品网</a></li>
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
                <li><a href="/bootstrap/saygoodproject/html/scanview.html">扫码看</a></li> <li><a href="/bootstrap/saygoodproject/html/login_sign.html">登录 | 注册</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">查看更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/bootstrap/saygoodproject/html/login_sign_manager.html">后台管理</a></li>
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
    <div class="wrapper">

        <ul id="sb-slider" class="sb-slider">
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao1.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>甘肃省陇西大红椒</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao2.jpg"
                                                alt="image2"/></a>
                <div class="sb-description">
                    <h3>甘肃省陇西大红椒</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao3.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>甘肃省陇西大红椒</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao4.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>甘肃省陇西大红椒</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/slice-box/images/5.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>Faithful Investor</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/slice-box/images/6.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>Groundbreaking Artist</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/slice-box/images/7.jpg"
                                                alt="image1"/></a>
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

<div class="left-navi-float-bar">

    <div class="row">

        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" id="myNav">
                <li><a href="#section-1">花椒</a></li>
                <li><a href="#section-2">苹果</a></li>
                <li><a href="#section-3">葡萄</a></li>
                <li><a href="#section-4">枸杞</a></li>
                <li class="active"><a href="#section-5">党参</a></li>
            </ul>
        </div>
        <div class="left-navi-bar">
            <div class="list-group">
                <a href="#" class="list-group-item active">
                    <h4 class="list-group-item-heading">
                        第三方合作快运
                    </h4>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                        顺丰快速
                    </h4>
                    <p lass="list-group-item-text">
                        提供航空快运,4小时即可到达目的地
                    </p>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                        中国邮政
                    </h4>
                    <p lass="list-group-item-text">
                        提供铁路快运,半天到达
                    </p>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                        联系客服
                    </h4>
                    <p class="list-group-item-text">
                        我们提供7*24小时支持。
                    </p>
                    <img style="height: 100px;width: 98%" src="/bootstrap/saygoodproject/images/kefu.png">
                </a>
            </div>
        </div>
        <div class="col-xs-6">
            <h2 id="section-1">花椒</h2>
            <p>
                <p>花椒的基本介绍</p>
                <p>花椒为芸香科灌木或小乔木植物青椒的干燥成熟果皮，一般在立秋前后成熟。产于四川、陕西、河南、河北、山西、云南等省，以四川产的质量好，以河北、山西产量为高。花椒是中国特有的香料，位列调料“十三香”之首。无论红烧、卤味、小菜、四川泡菜、鸡鸭鱼羊牛等菜肴均可用到它，也可粗磨成粉和盐拌匀为椒盐，供蘸食用。分为大椒和步椒两种，为良好的调味佐料，也可榨油，出油率在25%以上。花椒油有浓厚的香味，是一种很好的食用油。生产花椒味麻且辣，炒熟后香味才溢出。在烹调上既能单独使用，如花椒面；也能与其他原料配制成调味品，用途极广，效果甚好，如五香面、花椒盐、葱椒盐等。</p>
                <p>花椒的功效与作用</p>
                <p>
                花椒味辛、性热，归脾、胃经；有芳香健胃，温中散寒，除湿止痛，杀虫解毒，止痒解腥之功效；主要治疗呕吐，风寒湿痹，齿痛等症。
                    </p>
                1.增加食欲<br>
                花椒气味芳香，可除各种肉类的腥膻臭气，能促进唾液分泌，增加食欲。<br>
                2.降血压<br>
                有研究发现，花椒能使血管扩张，从而能起到降低血压的作用。<br>
                3.驱虫<br>
                服食花椒水能驱除寄生虫。<br>
                4.粮食防虫<br>
                存放的粮食被蛀了，用布包上几十粒花椒放入，虫就会自己跑走或死去。<br>
                5.油脂防“哈味”<br>
                在油脂中放入适量的花椒末，就可防止油脂变哈味。<br>
                6.菜橱防蚁<br>
                在菜橱内放置数十粒鲜花椒，蚂蚁就不敢进去。<br>
                7.食品防蝇<br>
                在食品旁边和肉上放一些花椒，苍蝇就不会爬。<br>
                8.沸油防溢<br>
                油炸食物时，如果油热到沸点，会从锅里溢出，但如放入几粒花椒后，沸油就会立即消落。<br>
                9.防牙痛<br>
                如果是冷热食物引起的牙痛，用一粒花椒放在患痛的牙上，痛感就会慢慢消失。<br>

                花椒的营养价值<br>
                果皮含有挥发油，油的主要成分为柠檬烯、枯醇、牛儿醇。此外并含有植物甾醇及不饱和有机酸等多种化合物。<br>

                花椒的选购<br>
                选购花椒的时候：一看，花椒以籽小、壳浅紫色的为好；二闻，好花椒如果没加热，香味难出；三搓，搓后有香味的就是好花椒，且搓后手上留重色或放在水中有重色彩渗出的，则可能有色素；外壳潮湿、无油润感的为次。<br>

                花椒的存储<br>
                花椒受潮后会生白膜、变味。保管时要放在干燥的地方，注意防潮。<br>
                <p>
                花椒的食用方法<br>
                1.炒菜时，在锅内热油中放几粒花椒，发黑后捞出，留油炒菜，菜香扑鼻。<br>
                2.炸花椒油时油温不宜过高。<br>
                3.把花椒、植物油、酱油烧热，浇在凉拌菜上，清爽可口。<br>
                4.腌制萝卜丝时放入花椒，味道绝佳。<br>
                </p>

            </p>
            <hr>
            <h2 id="section-2">苹果</h2>
            <p>1965年，示范点的果树挂果销售。这一年，“花牛”苹果首次打入香港市场，在香港国际博览会上，因其色度、果型、肉质、含糖等四项指标均优于美国“蛇果”而一举夺魁，享誉全球。这一消息传来，全村人都兴奋不已。当年9月23日，花牛村果农精心挑选出两箱刚刚采摘的苹果向毛主席寄去（并在装寄苹果的木箱上写下了“花牛”二字），表达对主席的敬仰，主席品尝后，非常喜爱，并在家中会见时任甘肃省省长的天水籍著名人士邓宝珊时用天水苹果招待他，称赞道：“你家乡天水的苹果好吃！”。此后，中共中央办公厅专门致函，代表毛主席向花牛村村民致谢。
                此后，我国正式以“花牛”作为苹果商标，向国外大量出口。</p>
            <p>天水地区独特的地理、气候资源条件，生长出的苹果，与其它国家和地区生产的苹果相比，色、味、形俱佳。天水市“花牛”苹果与美国“蛇果”的内在品质相比，可溶性固形物高1.4%，含糖量高1.86%，苹果酸低0.08%。其顶端突出的五棱和高达0.96-1.0的果形指数、果实表面百分之百的鲜红艳丽色泽、12.5-15%的可溶性固形物含量、浓郁的香味和甜脆的口感，向世界充分展示了她独特的外部特征和优良内在品质。
                “花牛”苹果已被许多中外专家和营销商认可为与美国蛇果、日本富士齐名的世界三大著名苹果品牌。在全国果品市场，不论何地生产的元帅系红苹果都是以“花牛”苹果的商标出售的。自从60年代天水“花牛”创出品牌后，近四十年，还没有哪一个苹果品牌能够替代“花牛”。2004年“首届中国（深圳）国际水果及技术展览会”上还获得“水果状元”及“最受深港地区消费者喜爱的系 列水果品牌”。那么，天水农民是如何种植出如此亮红的苹果，又是如何通过苹果的生产、加工、销售将市场带火、实现 增收的呢？本节目将去种植基地、市场、加工厂一探究竟。</p>
            <hr>
            <h2 id="section-3">葡萄</h2>
            <p>Integer pulvinar leo id risus pellentesque vestibulum. Sed diam libero, sodales eget sapien vel,
                porttitor bibendum enim. Donec sed nibh vitae lorem porttitor blandit in nec ante. Pellentesque vitae
                metus ipsum. Phasellus sed nunc ac sem malesuada condimentum. Etiam in aliquam lectus. Nam vel sapien
                diam. Donec pharetra id arcu eget blandit. Proin imperdiet mattis augue in porttitor. Quisque tempus
                enim id lobortis feugiat. Suspendisse tincidunt risus quis dolor fringilla blandit. Ut sed sapien at
                purus lacinia porttitor. Nullam iaculis, felis a pretium ornare, dolor nisl semper tortor, vel sagittis
                lacus est consequat eros. Sed id pretium nisl. Curabitur dolor nisl, laoreet vitae aliquam id, tincidunt
                sit amet mauris.</p>
            <p>Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. Etiam faucibus mauris id tempor
                egestas. Duis luctus turpis at accumsan tincidunt. Phasellus risus risus, volutpat vel tellus ac,
                tincidunt fringilla massa. Etiam hendrerit dolor eget ante rutrum adipiscing. Cras interdum ipsum
                mattis, tempus mauris vel, semper ipsum. Duis sed dolor ut enim lobortis pellentesque ultricies ac
                ligula. Pellentesque convallis elit nisi, id vulputate ipsum ullamcorper ut. Cras ac pulvinar purus, ac
                viverra est. Suspendisse potenti. Integer pellentesque neque et elementum tempus. Curabitur bibendum in
                ligula ut rhoncus.</p>
            <p>Quisque pharetra velit id velit iaculis pretium. Nullam a justo sed ligula porta semper eu quis enim.
                Pellentesque pellentesque, metus at facilisis hendrerit, lectus velit facilisis leo, quis volutpat
                turpis arcu quis enim. Nulla viverra lorem elementum interdum ultricies. Suspendisse accumsan quam nec
                ante mollis tempus. Morbi vel accumsan diam, eget convallis tellus. Suspendisse potenti.</p>
            <hr>
            <h2 id="section-4">枸杞</h2>
            <p>Suspendisse a orci facilisis, dignissim tortor vitae, ultrices mi. Vestibulum a iaculis lacus. Phasellus
                vitae convallis ligula, nec volutpat tellus. Vivamus scelerisque mollis nisl, nec vehicula elit egestas
                a. Sed luctus metus id mi gravida, faucibus convallis neque pretium. Maecenas quis sapien ut leo
                fringilla tempor vitae sit amet leo. Donec imperdiet tempus placerat. Pellentesque pulvinar ultrices
                nunc sed ultrices. Morbi vel mi pretium, fermentum lacus et, viverra tellus. Phasellus sodales libero
                nec dui convallis, sit amet fermentum sapien auctor. Vestibulum ante ipsum primis in faucibus orci
                luctus et ultrices posuere cubilia Curae; Sed eu elementum nibh, quis varius libero.</p>
            <p>Vestibulum quis quam ut magna consequat faucibus. Pellentesque eget nisi a mi suscipit tincidunt. Ut
                tempus dictum risus. Pellentesque viverra sagittis quam at mattis. Suspendisse potenti. Aliquam sit amet
                gravida nibh, facilisis gravida odio. Phasellus auctor velit at lacus blandit, commodo iaculis justo
                viverra. Etiam vitae est arcu. Mauris vel congue dolor. Aliquam eget mi mi. Fusce quam tortor, commodo
                ac dui quis, bibendum viverra erat. Maecenas mattis lectus enim, quis tincidunt dui molestie euismod.
                Curabitur et diam tristique, accumsan nunc eu, hendrerit tellus.</p>
            <p>Phasellus fermentum, neque sit amet sodales tempor, enim ante interdum eros, eget luctus ipsum eros ut
                ligula. Nunc ornare erat quis faucibus molestie. Proin malesuada consequat commodo. Mauris iaculis, eros
                ut dapibus luctus, massa enim elementum purus, sit amet tristique purus purus nec felis. Morbi
                vestibulum sapien eget porta pulvinar. Nam at quam diam. Proin rhoncus, felis elementum accumsan dictum,
                felis nisi vestibulum tellus, et ultrices risus felis in orci. Quisque vestibulum sem nisl, vel congue
                leo dictum nec. Cras eget est at velit sagittis ullamcorper vel et lectus. In hac habitasse platea
                dictumst. Etiam interdum iaculis velit, vel sollicitudin lorem feugiat sit amet. Etiam luctus, quam sed
                sodales aliquam, lorem libero hendrerit urna, faucibus rhoncus massa nibh at felis. Curabitur ac tempus
                nulla, ut semper erat. Vivamus porta ullamcorper sem, ornare egestas mauris facilisis id.</p>
            <p>Ut ut risus nisl. Fusce porttitor eros at magna luctus, non congue nulla eleifend. Aenean porttitor
                feugiat dolor sit amet facilisis. Pellentesque venenatis magna et risus commodo, a commodo turpis
                gravida. Nam mollis massa dapibus urna aliquet, quis iaculis elit sodales. Sed eget ornare orci, eu
                malesuada justo. Nunc lacus augue, dictum quis dui id, lacinia congue quam. Nulla sem sem, aliquam nec
                dolor ac, tempus convallis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla
                suscipit convallis iaculis. Quisque eget commodo ligula. Praesent leo dui, facilisis quis eleifend in,
                aliquet vitae nunc. Suspendisse fermentum odio ac massa ultricies pellentesque. Fusce eu suscipit
                massa.</p>
            <hr>
            <h2 id="section-5">党参</h2>
            <p>Nam eget purus nec est consectetur vehicula. Nullam ultrices nisl risus, in viverra libero egestas sit
                amet. Etiam porttitor dolor non eros pulvinar malesuada. Vestibulum sit amet est mollis nulla tempus
                aliquet. Praesent luctus hendrerit arcu non laoreet. Morbi consequat placerat magna, ac ornare odio
                sagittis sed. Donec vitae ullamcorper purus. Vivamus non metus ac justo porta volutpat.</p>
            <p>Vivamus mattis accumsan erat, vel convallis risus pretium nec. Integer nunc nulla, viverra ut sem non,
                scelerisque vehicula arcu. Fusce bibendum convallis augue sit amet lobortis. Cras porta urna turpis,
                sodales lobortis purus adipiscing id. Maecenas ullamcorper, turpis suscipit pellentesque fringilla,
                massa lacus pulvinar mi, nec dignissim velit arcu eget purus. Nam at dapibus tellus, eget euismod nisl.
                Ut eget venenatis sapien. Vivamus vulputate varius mauris, vel varius nisl facilisis ac. Nulla aliquet
                justo a nibh ornare, eu congue neque rutrum.</p>
            <p>Suspendisse a orci facilisis, dignissim tortor vitae, ultrices mi. Vestibulum a iaculis lacus. Phasellus
                vitae convallis ligula, nec volutpat tellus. Vivamus scelerisque mollis nisl, nec vehicula elit egestas
                a. Sed luctus metus id mi gravida, faucibus convallis neque pretium. Maecenas quis sapien ut leo
                fringilla tempor vitae sit amet leo. Donec imperdiet tempus placerat. Pellentesque pulvinar ultrices
                nunc sed ultrices. Morbi vel mi pretium, fermentum lacus et, viverra tellus. Phasellus sodales libero
                nec dui convallis, sit amet fermentum sapien auctor. Vestibulum ante ipsum primis in faucibus orci
                luctus et ultrices posuere cubilia Curae; Sed eu elementum nibh, quis varius libero.</p>
            <p>Morbi sed fermentum ipsum. Morbi a orci vulputate tortor ornare blandit a quis orci. Donec aliquam
                sodales gravida. In ut ullamcorper nisi, ac pretium velit. Vestibulum vitae lectus volutpat, consequat
                lorem sit amet, pulvinar tellus. In tincidunt vel leo eget pulvinar. Curabitur a eros non lacus
                malesuada aliquam. Praesent et tempus odio. Integer a quam nunc. In hac habitasse platea dictumst.
                Aliquam porta nibh nulla, et mattis turpis placerat eget. Pellentesque dui diam, pellentesque vel
                gravida id, accumsan eu magna. Sed a semper arcu, ut dignissim leo.</p>
            <p>Sed vitae lobortis diam, id molestie magna. Aliquam consequat ipsum quis est dictum ultrices. Aenean nibh
                velit, fringilla in diam id, blandit hendrerit lacus. Donec vehicula rutrum tellus eget fermentum.
                Pellentesque ac erat et arcu ornare tincidunt. Aliquam erat volutpat. Vivamus lobortis urna quis gravida
                semper. In condimentum, est a faucibus luctus, mi dolor cursus mi, id vehicula arcu risus a nibh.
                Pellentesque blandit sapien lacus, vel vehicula nunc feugiat sit amet.</p>
        </div>
    </div>
</div>
<div class="fixed-bottom">
    <footer>
        <jsp:include page="/bootstrap/saygoodproject/html/footer.html"></jsp:include>
    </footer>
</div>
</body>
</html>