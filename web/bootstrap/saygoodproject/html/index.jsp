<%@page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>众口味网-首页</title>
    <meta name="keywords" content="西部果品网,圈内,花椒,苹果,葡萄,枸杞,众口味"/>
    <meta name="description" content="众口味网 是一家在线服务类互联网公司,以人们最切近,最需要的服务为项目选型,崛起于西部,选取西部最具特色水果,食材,药材,补品,我们本着为西部农民打开销路,为全国人民广而告之,并提供分销服务的原则." />

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
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?b90b3a5b6966ec3c4916467b80b47b7c";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
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
            <img src="/bootstrap/saygoodproject/images/logo.png" style="width: 50px;height: 50px">
            <%--<a class="navbar-brand" href="#">众口味</a>--%>
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
            <p>营养价值</p>
            <p>
                中医认为，葡萄性平、味甘酸，能补气血，强筋骨，益肝阴，利小便，舒筋活血，暖胃健脾，除烦解渴。现代医学则证明，葡萄中所含的多酚类物质是天然的自由基清除剂，具有很强的抗氧化活性，可以有效地调整肝脏细胞的功能，抵御或减少自由基对它们的伤害。此外，它还具有抗炎作用，能与细菌、病毒中的蛋白质结合，使它们失去致病能力。国外的研究证明，新鲜的葡萄、葡萄叶、葡萄干都具有抵抗病毒的能力。
            </p>
            <p>
                葡萄中含有丰富的葡萄糖及多种维生素，对保护肝脏、减轻腹水和下肢浮肿的效果非常明显，还能提高血浆白蛋白，降低转氨酶。葡萄中的葡萄糖、有机酸、氨基酸、维生素对大脑神经有兴奋作用，对肝炎伴有的神经衰弱和疲劳症状有改善效果。葡萄中的果酸还能帮助消化、增加食欲，防止肝炎后脂肪肝的发生。
            </p>
            <p>
                葡萄干是肝炎患者补充铁的重要来源。用葡萄根100?150克煎水服下，对黄疸型肝炎有?定辅助疗效 。一、吃醋葡萄干能够预防结肠癌 二、醋葡萄干对视力恢复非常有效 三、醋葡萄干能美化肌肤 四、吃醋葡萄能快速消除疲劳 五、醋葡萄干能改善贫血与恶性皮肤炎 六、醋葡萄干治好老花眼 七、醋葡萄干大幅度改善贫血 八、醋葡萄干治好皮肤病葡萄为葡萄科落叶木质藤本植物的果实，又名草龙珠、水晶明珠、蒲桃、蒲陶、李桃、山葫芦。葡萄被人们视为珍果，被誉为世界四大水果之首。它不但营养丰富、用途广泛：色美、气香，味可口，是果中佳品，既可鲜食又可加工成各种产品，如葡萄酒、葡萄汁、葡萄干等，而且果实、根、叶皆可入药，全身都是宝。
            </p>
            <p>
                据测定，葡萄浆果除含水分外，还含有约15%～30%糖类(主要是葡萄糖、果糖和戊糖)，各种有机酸(苹果酸、酒石酸以及少量的柠檬酸、琥珀酸、没食子酸、草酸、水杨酸等)和矿物质，以及各种维生素、氨基酸、蛋白质、碳水化合物、粗纤维、钙、磷、铁、胡萝卜素、硫胺素、核黄素、尼克酸、抗坏血酸、卵磷脂等。特别是现代医学发现，葡萄皮和葡萄籽中含有一种抗氧化物质白藜芦醇，对心脑血管病有积极的预防和治疗作用。多吃葡萄、喝葡萄汁和适量饮用葡萄酒对人体健康很有好处，产后的妇女于饭后吃葡萄，或喝些葡萄酒，既可帮助血液循环，又可增加身体中的血色素。
            </p>
            <p>
                葡萄汁、子、皮内均富含强力抗氧化物质??白藜芦醇及类黄酮等成分，它们在皮及子中的含有量上更胜一筹。白藜芦醇及类黄酮具有阿司匹林药物的溶栓、抗血凝效益，可防御缺血性脑中风，如脑梗塞、脑血栓等。 但是，葡萄虽属药果兼优的养生佳品，但祖国医学认为，其性寒凉，因此当脾胃不和、虚寒泄泻时应忌食。

            </p>
            <hr>
            <h2 id="section-4">枸杞</h2>
            <p>主要成份：枸杞子含甜菜碱（betane），阿托品（atropine），天仙子胺（gyoscyamine）。</P>
            <p>枸杞多糖：枸杞多糖是一种水溶性多糖，是枸杞中最主要的活性成分，相对分子质量为68-200，成为国内外研究热点。其中又以枸杞多糖的免疫调节和抗肿瘤作用的研究最多。现已有很多研究表明枸杞多糖具有促进免疫、抗衰老、抗肿瘤、清除自由基、抗疲劳、抗辐射、保肝、生殖功能保护和改善等作用。</p>
            <p>甜菜碱：化学名称为1-羧基-N，N，N-三甲氨基乙内酯，在化学结构上与氨基酸相似，属于季胺碱类物质。甜菜碱是枸杞果、叶、柄中主要的生物碱之一。枸杞对脂质代谢或抗脂肪肝的作用主要是由于所含的甜菜碱引起的，它在体内起甲基供应体的作用。关于枸杞甜菜碱的研究仅限于国内在含量的测定、提取工艺和对枸杞植物的生理作用（增强耐盐性）研究方面，关于枸杞甜菜碱的药理药效研究很少。</p>
            <p>枸杞色素：枸杞色素是存在于枸杞浆果中的各类呈色物质，是枸杞籽的重要生理活性成分。主要包括-胡萝卜素、叶黄素和其他有色物质。枸杞所含有的类胡萝卜素则具有非常重要的药用价值。很多研究已经证明枸杞籽色素具有提高人体免疫功能、预防和抑制肿瘤及预防动脉粥样硬化等作用。胡萝卜素是枸杞色素的主要活性成分，具有抗氧化和作为维生素A的合成前体等重要的生理功能。</p>
            <p>药理作用：对免疫功能有影响作用。</p>
            <p>性味：枸杞子：甘，平。枸杞叶：苦、甘；性凉。</p>
            <p>功能：枸杞子：养肝，滋肾，润肺。枸杞叶：补虚益精，清热明目。</p>
            <hr>
            <h2 id="section-5">党参</h2>
            <p>地域范围</p>
　　　       <p>
            陇西县的首阳镇、福星镇、马河镇、碧岩镇、柯寨乡、德兴乡、双泉乡、文峰镇、巩昌镇、菜子镇、通安驿镇<br>
            </p>
　　        <p>特定品质</p>
            <p>
                陇西良好的种植条件造就了白条党参的优异品质：其状呈圆柱形，芦下3厘米~5厘米处最粗，长15厘米~45厘米，直径0.4厘米~1.8厘米，具"蛇形根头"，根头部有多数疣状突起的茎痕及芽；质较柔软带韧性，皮紧、肉厚、味甘，嚼之无渣，条长直、粗壮，色白质重，品质远好于全国其他产区党参，从而自成一品，国内外用户赞誉不绝。白条党参富含生物碱、挥发油、树脂、粘液质和维生素、蛋白质、淀粉、糖、矿物质等多种有益成分，有养血、健脾、补中、益气、降压、生津、抗癌之功效，常作为人参的代用品，俗称"小人参"。
            </p>
            <p>文化典故</p>
            <p>
                陇西白条党参为菊梗科植物党参的干燥根，因其主产甘肃陇西，色白条直，富含多种药用成分和保健元素，被誉为"陇西白条党参"。
            </p>
　　　　
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