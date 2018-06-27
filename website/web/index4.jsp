<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
  <!--[if lt IE 9]>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
  	<script type="text/javascript" src="js/html5.js"></script>
  <![endif]-->
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
                <li><a href="index4.jsp"class="current">公益活动</a></li>
                <li><a href="index5.jsp">公益广告</a></li>
                <li><a href="video.jsp">视频展示</a></li>
                <li><a href="publish.jsp">发布文章</a></li>
            </ul>

        </div>
      </div>
    </nav>
    <section class="adv-content">
    	<div class="container">
        <ul class="breadcrumbs">

        </ul>
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
  <section id="content">
  	<div class="top">
    	<div class="container">
      	<div class="clearfix">
        	<div class="grid3 first">
            <ul class="list3">
                <p><span style="font-size:72px;color:red;line-height: 150%">公</span></p>
                <p><span style="font-size:72px;color:red;line-height: 150%">益</span></p>
                <p><span style="font-size:72px;color:red;line-height: 150%">活</span></p>
                <p><span style="font-size:72px;color:red;line-height: 150%">动</span></p>
            </ul>
          </div>
            <ul>
        	<div class="grid9">
          	<h2>让轮椅飞</h2>
            <div class="img-box">
            	<figure><img src="images/2page-img1.jpg"width="160 "height="160" alt=""></figure>
              <p><span style="color:black">“在朋友圈看到‘让轮椅飞’公益项目后，就想着我能不能也参与进来。”“我在山西，能不能申领一辆轮椅？”日前，雷锋热线全媒体平台收到来自北京、山西、武汉等全国各地残友发来的求助，他们纷纷表示，希望能为自己募集一辆闲置轮椅。
                  20年前，家住武汉市城郊的张红五因为家里瓦房漏雨，上房补瓦时不慎摔落导致高位截瘫。不愿虚度光阴的张红五报名成为当地残疾人康复中心的志愿者，长期为那里的残疾朋友做心理辅导。“我使用轮椅很频繁，所以损坏也快。”张红五说。
                  像张红五这样只能用轮椅代步的情况还很多，却又因为经济条件有限无法置办。因此，他们特求助雷锋热线，希望通过“让轮椅飞”公益项目，为自己募集一辆可供使用的闲置轮椅。</span></p>
            </div>
            <div class="img-box">
            	<figure><img src="images/2page-img2.jpg" width="160"height="160" alt=""></figure>
                <p><span style="font-size:15px;color:black">如果你也想加入“让轮椅飞”活动,捐赠相关物资,或者是认领相关物资,请通过以下方式联系我们</span></p>
                <p><span style="color:black">1、拨打电话(028)81234567.</br>
                    2、搜索关注“雷锋热线”新浪官方微博或搜索关注“雷锋热线”微信公众号留言.</br>
                    3、加入QQ群125279434(成都学雷锋爱心联盟群.</br></span></p>
                <img src="images/2page-img7.jpg" width="800" height="120"style="position:absolute;top:440px;left:200px;">
            </div>
          </div>
            </ul>

        </div>
      </div>
    </div>
    <div class="middle">
    	<div class="container">
      	<div class="clearfix">
            <ul>
        	<div class="grid3 first">
                <h2>睡前讲故事</h2>
            <div class="img-wrap"><figure><img src="images/2page-img3.jpg"width="160" height="160" alt=""></figure></div>
                <p><span style="color:black">4月7日，雷锋热线发起“睡前讲故事·呵护留守儿童快乐时光”大型公益项目，不到半个月时间，我们已成功募集到两百个MP3及1500余个睡前故事。经过前期精心准备，成都学雷锋爱心联盟志愿者将于4月22日与爱心家庭一道，携带装满睡前故事的MP3前往大邑县。
根据市区周边留守儿童学校的调查情况，雷锋热线计划在本周五下午3点，与爱心家庭一起，携200份爱心礼包，为大邑县子龙街小学、晋原镇初级中学的200名留守儿童送去期盼已久的MP3。</span></p>
            <p><span style="color:black">“我想报名参加！”“算我一个”从活动启动以来，雷锋热线全媒体平台进行了全程报道，在雷锋热线官方微博上设置的话题“睡前讲故事”得到网友强烈关注。截至目前，该话题的阅读量已达150余万，参与互动数量近2000条。其中4月13日发布的《名人大咖邀你一起加入》内容，转评赞数量超200余次，阅读量为1.2万余次。雷锋热线推出的主题H5《有一个孤单的孩子正在等你……》，截至目前，收到50余位普通志愿者的报名留言。</span></p>
          </div>
            </ul>
        	<div class="grid9">
          	<h2>名师一堂课</h2>
                <p><span style="color:black">名师一堂课再发志愿征集令 2012年至2015年，4年里，茅盾文学奖获奖者阿来、鲁迅文学奖得主周啸天、著名油画家何多苓等名人纷纷加入“名师团”，为孩子们的梦想助力。如今，“名师一堂课”名师志愿者团已有52位名人。 4年时间，52位名人走进教室，把自己的所学所感，把自己的经历故事，化作一堂堂特别的课程，为孩子们带去知识，带去快乐，带去梦想的启迪。2016年，名师一堂课再度扬帆。这一次，我们的目光聚焦“国际化”，定下的主题是“名师一堂课·放眼看世界”。我们邀您一起带着孩子们体会世界的奇妙！</span></p>
                <p><span style="color:black">3月，春意盎然的成都正加快建设国际化大都市，未来的成都将融入世界城市网络体系，通达全球，包容多元，将会有更强的国际竞争力和影响力，更高的吸引力和辐射力……今年，我们期待名师“讲”世界，让孩子们增加对世界的了解，开拓视野，创新思维，多了解世界的规则和变化，激发孩子们探索世界的兴趣.只要您对世界经济、政治、科技、历史、文学、艺术等某一领域有深入的研究和建树，我们就欢迎前来。您可以给孩子们讲解如何在维也纳听一场音乐会，讲一讲卢浮宫的名画，也可以分享“一带一路”对世界经济的影响，畅谈您眼中未来城市的交通规划……
                    　　如果您有国外求学、工作、生活的经历，长期接触或参与国际事务，懂得国际规则和礼仪知识等，也欢迎您报名。您可以邀请孩子们扮演各国外交官，搞一场模拟联合国大会，也可以与孩子们做西餐、品西餐，顺便分享国际用餐礼仪，甚至您可以来分享环球旅行中的各国风情。现在，我们真诚邀请您加入2016年名师志愿者团！用您的智慧和经历，开启孩子们的世界之旅！</span></p>
                <div class="clearfix">
            	<div class="grid3 first">
              	<ul class="list3">
                    <div class="img-wrap"><figure><img src="images/2page-img4.jpg"width="260" height="160" alt=""></figure></div><div class="img-wrap"><figure><img src="images/2page-img5.jpg"width="260" height="160" alt=""></figure></div>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
          <div class="img-wrap"><figure><img src="images/2page-img6.jpg"width="460" height="380" style="position: absolute;left:1000px;top:1010px;"alt=""></figure></div>
  </section>

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