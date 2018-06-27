<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
    <!--<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>-->
    <!--<script type="text/javascript" src="js/html5.js"></script>-->
</head>

<body>
<%@ include file="logincookie.jsp"%>
<header>
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp" >文明你我</a></li>
                    <li><a href="index1.jsp">志愿者APP</a></li>
                    <li><a href="index2.jsp">志愿者网</a></li>
                    <li><a href="index3.jsp" >雷锋热线</a></li>
                    <li><a href="index4.jsp">公益活动</a></li>
                    <li><a href="index5.jsp"class="current">公益广告</a></li>
                    <li><a href="video.jsp">视频展示</a></li>
                    <li><a href="publish.jsp">发布文章</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="adv-content">
        <div class="container">
            <form action="" id="search-form">
                <fieldset>
                    <div id="login1">
                        <a href="LoginAndRegister.jsp?action=login">登陆</a>&nbsp;&nbsp;
                        <a href="LoginAndRegister.jsp?action=register">去注册</a>
                    </div>
                    <div id="login2" style="display: none">
                        欢迎你&nbsp;<a href="#"><%=uesrname%></a>&nbsp;
                        <button id="exit" onclick="logout()">退出登陆</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </section>
</header>
<div id="demo" style="overflow:hidden;width:2000px;height:200px;color:#ffffff;">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr><td id="demo1" valign="top" align="center">
            <table cellpadding="2" cellspacing="0" border="0">
                <tr align="center">
                    <td><img src="images/img1.jpg" width="400"height="200"></td>
                    <td><img src="images/img2.jpg"width="400" height="200"></td>
                    <td><img src="images/img3.jpg" width="400"height="200"></td>
                    <td><img src="images/img4.jpg" width="400"height="200"></td>
                    <td><img src="images/img5.jpg"width="400" height="200"></td>
                    <td><img src="images/img6.jpg"width="400" height="200"></td>
                    <td><img src="images/img7.jpg"width="400" height="200"></td>
                </tr>
            </table>
        </td>
            <td id="demo2" valign="top"></td>
        </tr>
    </table>
</div>
<section id="content">
    <div class="top">
        <div class="container">
            <div class="clearfix">
                <img src="images/img8.jpg">
                <section id="intro">
                    <div class="inner">
                        <h2 style="color:red">公益广告简介</h2>
                        <p style="color:black">公益广告是以为公众谋利益和提高福利待遇为目的而设计的广告,是企业或社会团体向消费者阐明它对社会的功能和责任，表明自己追求的不仅仅是从经营中获利，而是过问和参与如何解决社会问题和环境问题这一意图的广告，它是指不以盈利为目的而为社会公众切身利益和社会风尚服务的广告。它具有社会的效益性、主题的现实性和表现的号召性三大特点。</p>
                        <link><a href="https://baike.baidu.com/item/%E5%85%AC%E7%9B%8A%E5%B9%BF%E5%91%8A/1306572?fr=aladdin">了解更多</a></link>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <div class="middle" style="height: 500px;">
        <div class="container">
            <div class="wrapper">
                <div class="grid3 first">
                    <ul class="categories">
                        <li><a href="#" onmouseenter="changeContent(0)">关爱空巢老人
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(1)">爱心献给全世界
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(2)">建设文明城区
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(3)">助人与助己
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(4)">关爱留守儿童
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(5)">建设绿色城市
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(6)">公益献血
                        </a></li>
                    </ul>
                </div>
                <img src="images/img0.jpg"width="750"height="170">
                <div class="grid9">
                    <h3 id="newstitle"
                        style="padding-top: 8px;color:black;line-height: 30px">随着我国人口老龄化不断增长的趋势日益明显，关爱空巢老人越来越成为人们关注的话题，出现在空巢老人中的问题也日渐突出。
                    </h3>
                    <p id="newscontent"style="font-size:13px;color: black"> 2017年2月7日下午，为了体现社区对空巢老人的关怀，五通社区妇联、五通社区团支部组织辖区内的共青团员志愿者在春节上门看望了空巢老人龙叔叔。共青团员们为老人送上了鲜花与节日祝福，还购买了多种水果送给龙叔叔，陪老人聊天，捧着孩子们送来的祝福，老人喜笑颜开。随后大家争着帮忙做家务，龙叔叔看到天气这么冷非常舍不得让志愿者打扫卫生，可是志愿者们依然坚持要把龙叔叔家打扫干净，让老人有一个舒适的生活环境。孩子们的爱心让老人感觉很温暖，使老人感受到了浓浓的爱意。整个下午，屋子里充满了欢声笑语、其乐融融。随着生活节奏的加快，与子女分居的空巢老人逐年增多，空巢老人作为社会中的弱势群体，需要在生活上给予照顾，在感情上得到慰藉，弘扬关爱老人、尊敬老人的文明风尚，为政府分忧解难，是我们社区工作人员应尽的责任和义务，社区会尽一切努力将关爱老人活动发扬光大让老人们感受到政府对他们的关爱，安享幸福晚年。
                    </p>
                </div>
            </div>
        </div>
    </div>

</section>


<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript">
    var body = new Array();
    var title = new Array();
    var url = new Array();
    var imgurl = new Array();

    body[0] = "   2017年2月7日下午，为了体现社区对空巢老人的关怀，五通社区妇联、五通社区团支部组织辖区内的共青团员志愿者在春节上门看望了空巢老人龙叔叔。共青团员们为老人送上了鲜花与节日祝福，还购买了多种水果送给龙叔叔，陪老人聊天，捧着孩子们送来的祝福，老人喜笑颜开。随后大家争着帮忙做家务，龙叔叔看到天气这么冷非常舍不得让志愿者打扫卫生，可是志愿者们依然坚持要把龙叔叔家打扫干净，让老人有一个舒适的生活环境。孩子们的爱心让老人感觉很温暖，使老人感受到了浓浓的爱意。整个下午，屋子里充满了欢声笑语、其乐融融。随着生活节奏的加快，与子女分居的空巢老人逐年增多，空巢老人作为社会中的弱势群体，需要在生活上给予照顾，在感情上得到慰藉，弘扬关爱老人、尊敬老人的文明风尚，为政府分忧解难，是我们社区工作人员应尽的责任和义务，社区会尽一切努力将关爱老人活动发扬光大让老人们感受到政府对他们的关爱，安享幸福晚年。 ";
    title[0] = " 随着我国人口老龄化不断增长的趋势日益明显，关爱空巢老人越来越成为人们关注的话题，出现在空巢老人中的问题也日渐突出";

    body[1] = " 　今年3月5日是毛泽东等老一辈革命家号召“向雷锋同志学习”55周年。为深入贯彻习近平总书记关于传承和弘扬雷锋精神的系列重要论述，贯彻落实党的十九大精神，培育和践行社会主义核心价值观，3月1日上午，军委政治工作部、共青团中央组织全军青年英模代表、全国青年典型代表在抚顺祭扫雷锋墓。";
    title[1] = " 传承和弘扬雷锋精神 争做新时代雷锋传人 ";

    body[2] = " 围绕“民族复兴·中国梦”这一鲜明主题，人民日报、光明日报、经济日报、工人日报、中国青年报、中国妇女报、环球时报、新华每日电讯、参考消息等主要报纸，以彩色整版或半版篇幅刊出公益广告，气势恢宏，主题鲜明；中央人民广播电台各频率在黄金时段推出的公益广告，以平民视角、百姓口吻展望“中国梦”，亲切感人；中央电视台将在各频道全方位、高频次地连续播出同名公益广告。中国文明网、人民网、新华网、中国广播网、中国网络电视台、光明网、中国经济网等网站均在首页显著位置推出“讲文明树新风”公益广告专题。 ";
    title[2] = "自2012年12月20日起，中央主要媒体隆重推出“讲文明树新风”公益广告 ";

    body[3] = " 滨湖街道明园社区主任姚广秀说，她认为邻里之前互帮互助，好处很多，“夫妻吵架，邻居来劝个架，夫妻俩就不会打破头了；老人一人在家，隔壁来串个门，问候一声，老人心里肯定暖和；下雨了，楼上楼下喊一声，也不至于被子、衣服什么的淋湿了……”姚广秀说，一个社区就是一个大家庭，家庭成员之间当然要互帮互助。社区居民住在一个小区，大家都面熟，但就是不愿多交流，每次擦身而过，这次举办邻里节活动就是要创造这么一个平台，给社区居民一个互相认识的机会，在以后的生活中互相关心，互相帮助，让邻里关系更融洽，从而建设和谐社区、和谐南京。";
    title[3] = " 互帮互助，互相帮助，共同进步 ";

    body[4] ="为给留守儿童创造良好的成长环境，让缺失亲情的留守儿童少一些孤单，孟庙镇采取多种举措，搭建关爱平台，加大帮扶力度，积极为留守儿童创造温馨的学习和生活环境。必须要摸清底数。包片领导、镇包村干部、村（居）干部及各学校负责人结合对辖区内留守儿童外出务工父母和临时监护人的基本情况进行调查摸底，建立详细完备的农村留守儿童信息台账，及时掌握农村留守儿童的家庭情况、监护情况、就学情况等基本信息，实行动态管理。 ";
    title[4] = " 真情关爱留守儿童 ";

    body[5] = "  6月14日，市生态环境保护宣讲团成员赴白云矿区开展生态环境保护专题宣讲。白云矿区区委以中心组扩大学习会的方式邀请市委党校管理学教研室讲师、市生态环境保护宣讲团成员任希珍作了题为《深入学习习近平生态文明思想推进美丽中国建设——2018年全国生态环境保护大会精神解读》的专题宣讲。白云矿区副科级以上干部，国土、住建、环保局干部职工以及有关企业环保工作负责人共一百余人聆听了宣讲。 ";
    title[5] = " 包头市生态环境保护集中宣讲活动走进白云矿区";

    body[6] = " 为响应睢宁县卫计委、红十字会的号召，大力弘扬无偿献血精神，李集镇中心卫生院于2018年6月22日组织开展了无偿献血活动。医院工作人员、辖区内群众、部分机关单位人员纷纷加入献血队伍。　　\n" +
        "据了解，采血环节至下午3点才完成，共有47名人员登记献血，累计献血量16800毫升。据工作人员反映，本次采血活动是今年我县乡镇卫生院采血活动以来的最高记录，也是最为积极踊跃、参与人数最多、献血量最多的一次。 ";
    title[6] = " 李集镇中心卫生院开展无偿献血活动 ";


    function changeContent(index) {
        newstitle.innerText = title[index];
        newscontent.innerText = body[index];
        newsurl.href = url[index];
        addImg(index);
    }


    /**
     * 动态更新图片
     * @param index
     */
    function updateImg(index) {
        var imgurls = imgurl[index].split(";");
        var parent = document.getElementById("images");
        $("#images").empty();
        for (var i = 0; i < imgurls.length; i++) {
            if (imgurls[i] == " null " || imgurls[i].charAt(imgurls[i].length - 1) == '.') continue;
            var figure = document.createElement("figure");
            figure.setAttribute("style", "height: 100px; width: 100px;display:inline;padding: 5px");
            var img = document.createElement("img");
            img.setAttribute("class", "center-cropped");
            img.src = imgurls[i];
            figure.appendChild(img);
            parent.appendChild(figure);
        }
    }
    changeContent(0);
</script>
<script>
    var speed=35//速度数值越大速度越慢
    demo2.innerHTML=demo1.innerHTML
    function Marquee(){
        if(demo.scrollLeft<=0)
            demo.scrollLeft+=demo2.offsetWidth
        else{
            demo.scrollLeft--
        }
    }
    var MyMar=setInterval(Marquee,speed)
    demo.onmouseover=function() {clearInterval(MyMar)}
    demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
</script>

<footer>
    <div class="bottom">
        <div class="container">
            <div class="wrapper">
                <div class="grid3 first">
                    <h3>团队成员</h3>
                    <ul class="list1">
                        <li>成文杰</li>
                        <li>彭伟航</li>
                        <li>黄松涛</li>
                        <li>刘承道</li>
                        <li>聂鑫泉</li>
                    </ul>
                </div>

                <!--日历-->
                <div class="grid3">
                    <div id="datepicker"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="wrapper">
            <div class="copy">&copyCDUT实训 2018</div>
        </div>
    </div>
</footer>
<script type="text/javascript">
    $(document).ready(function () {
        $('.pics').cycle({
            fx: 'toss',
            next: '#next',
            prev: '#prev'
        });
        // Datepicker
        $('#datepicker').datepicker({
            inline: true
        });
    });
</script>
<script type="text/javascript">
    var login = <%=has_login%>;
    if (login){
        document.getElementById('login1').style.display = "none";
        document.getElementById('login2').style.display = "";
    }
    else {
        document.getElementById('login2').style.display = "none";
        document.getElementById('login1').style.display = "";
    }

    function logout(){
        var myDate=new Date();
        myDate.setTime(-1000);//设置时间
        var data=document.cookie;
        var dataArray=data.split("; ");
        for(var i=0;i<dataArray.length;i++){
            var varName=dataArray[i].split("=");
            document.cookie=varName[0]+"=''; expires="+myDate.toGMTString();
        }

    }
</script>
</body>
</html>

