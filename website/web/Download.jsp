<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/25
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*"%>
<%@ page import="java.io.IOException"%>
<html>
<head>
    <title>文件下载</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%!
    public void travelDirectory(String directory,JspWriter out)
    {
        File dir = new File(directory);
        if(dir.isFile())            //判断是否是文件，如果是文件则返回。
            return;
        File [] files = dir.listFiles();        //列出当前目录下的所有文件和目录
        for(int i = 0;i < files.length;i++)
        {
            if(files[i].isDirectory())       //如果是目录，则继续遍历该目录
                travelDirectory(files[i].getAbsolutePath(),out);
            try {
                out.println("<div class='portfolio-group'> " +
                        "<a class='portfolio-item' href='images/" +
                        files[i].getName() +
                        "'> <img src='images/" +
                        files[i].getName() +
                        "'> <div class='detail'><h3></h3><p></p><span class='btn'>View</span> </div> </a> </div>");
            }
            catch (IOException e){
                System.out.println("错误提示：" + e.getMessage());
            }
        }
    }
%>

<div class="content-container">
    <header>
        <h1 class="center-text">图片预览</h1>
    </header>
    <div id="portfolio-content" class="center-text">
        <div class="portfolio-page" id="page-1">
            <%
                //文件绝对路径
//                String dir="E:/学习文件/第一次实训/javaWeb/website/web/images";
                String dir=application.getRealPath("/")+"images";
                travelDirectory(dir,out);
            %>
            <%--<div class="portfolio-group">
                <a class="portfolio-item" href="images/1-large.jpg">
                    <img src="images/1-small.jpg" alt="image 1">
                    <div class="detail">
                        <h3>Wavy Road</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/2-large.jpg">
                    <img src="images/2-small.jpg" alt="image 2">
                    <div class="detail">
                        <h3>Rocky Mountain</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/3-large.jpg">
                    <img src="images/3-small.jpg" alt="image 3">
                    <div class="detail">
                        <h3>Clear River</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/4-large.jpg">
                    <img src="images/4-small.jpg" alt="image 4">
                    <div class="detail">
                        <h3>Rounded Flower</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/5-large.jpg">
                    <img src="images/5-small.jpg" alt="image 5">
                    <div class="detail">
                        <h3>Bustling City</h3>
                        <p>Duis ac laoreet mi. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/6-large.jpg">
                    <img src="images/6-small.jpg" alt="image 6">
                    <div class="detail">
                        <h3>Retired Leaves</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/7-large.jpg">
                    <img src="images/7-small.jpg" alt="image 7">
                    <div class="detail">
                        <h3>Clean Design</h3>
                        <p>Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/8-large.jpg">
                    <img src="images/8-small.jpg" alt="image 8">
                    <div class="detail">
                        <h3>Rock Solid</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
        </div>
        <div class="portfolio-page" id="page-2" style="display:none;">
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/8-large.jpg">
                    <img src="images/8-small.jpg" alt="image 8">
                    <div class="detail">
                        <h3>Wavy Road</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Sed in molestie lectus. Curabitur non est neque.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/7-large.jpg">
                    <img src="images/7-small.jpg" alt="image 7">
                    <div class="detail">
                        <h3>Rocky Mountain</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet. Duis ac laoreet mi.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/6-large.jpg">
                    <img src="images/6-small.jpg" alt="image 6">
                    <div class="detail">
                        <h3>Clear River</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/5-large.jpg">
                    <img src="images/5-small.jpg" alt="image 5">
                    <div class="detail">
                        <h3>Rounded Flower</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/4-large.jpg">
                    <img src="images/4-small.jpg" alt="image 4">
                    <div class="detail">
                        <h3>Bustling City</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/3-large.jpg">
                    <img src="images/3-small.jpg" alt="image 3">
                    <div class="detail">
                        <h3>Retired Leaves</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/2-large.jpg">
                    <img src="images/2-small.jpg" alt="image 2">
                    <div class="detail">
                        <h3>Clean Design</h3>
                        <p>Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/1-large.jpg">
                    <img src="images/1-small.jpg" alt="image 1">
                    <div class="detail">
                        <h3>Rock Solid</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
        </div>
        <div class="portfolio-page" id="page-3" style="display:none;">
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/3-large.jpg">
                    <img src="images/3-small.jpg" alt="image 3">
                    <div class="detail">
                        <h3>Wavy Road</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Curabitur non est neque.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/2-large.jpg">
                    <img src="images/2-small.jpg" alt="image 2">
                    <div class="detail">
                        <h3>Rocky Mountain</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet. Duis ac laoreet mi.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/4-large.jpg">
                    <img src="images/4-small.jpg" alt="image 4">
                    <div class="detail">
                        <h3>Clear River</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/1-large.jpg">
                    <img src="images/1-small.jpg" alt="image 1">
                    <div class="detail">
                        <h3>Rounded Flower</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet. </p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/5-large.jpg">
                    <img src="images/5-small.jpg" alt="image 5">
                    <div class="detail">
                        <h3>Bustling City</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Curabitur non est neque.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/6-large.jpg">
                    <img src="images/6-small.jpg" alt="image 22">
                    <div class="detail">
                        <h3>Retired Leaves</h3>
                        <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/8-large.jpg">
                    <img src="images/8-small.jpg" alt="image 8">
                    <div class="detail">
                        <h3>Clean Design</h3>
                        <p>Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>
            <div class="portfolio-group">
                <a class="portfolio-item" href="images/7-large.jpg">
                    <img src="images/7-small.jpg" alt="image 7">
                    <div class="detail">
                        <h3>Rock Solid</h3>
                        <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>
                        <span class="btn">View</span>
                    </div>
                </a>
            </div>--%>
        </div>
        <div class="pagination">
            <ul class="nav">
                <li class="active">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/modernizr.2.5.3.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/templatemo_script.js"></script>
<script type="text/javascript">
    $(function () {
        $('.pagination li').click(changePage);
        $('.portfolio-item').magnificPopup({
            type: 'image',
            gallery:{
                enabled:true
            }
        });
    });
</script>

</body>
</html>
