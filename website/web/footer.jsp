<%--
  Created by IntelliJ IDEA.
  User: cwj
  Date: 6/23/18
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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