<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/27
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>志愿者申请</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <style type="text/css">
        .divstyle{
            width: 700px;
            height: 800px;
            position: absolute;
            top: 10%;
            left: 30%;
        }
    </style>
</head>
<body>
<div style="background-color: white; color: black" class="divstyle">
    <br>
    <h1 style="font-size: 30px" align="center">注册个人基本信息</h1><br><br>
    <tr>
        <td>真实姓名：</td>
        <td><input></td>
    </tr><br><br>
    <tr>
        <td>证件类型：</td>
        <td><select><option value="">请选择</option><option>内地居民身份证</option><option>香港居民身份证</option><option>澳门居民身份证</option><option>台湾居民身份证</option><option>护照</option></select></td>
    </tr><br><br>
    <tr>
        <td>证件号码：</td>
        <td><input></td>
    </tr><br><br>
    <tr>
        <td>性别：</td>
        <td>&nbsp;&nbsp;<input type="radio" name="gender" value="0" checked>&nbsp;女&nbsp;&nbsp;<input type="radio" name="gender" value="1">&nbsp;男<span class="v_result"></span></td>
    </tr><br><br>
    <tr>
        <td>出生日期：</td>
        <td><select><option value="">年</option><option value="1919">1919年</option><option value="1920">1920年</option><option value="1921">1921年</option><option value="1922">1922年</option><option value="1923">1923年</option><option value="1924">1924年</option><option value="1925">1925年</option><option value="1926">1926年</option><option value="1927">1927年</option><option value="1928">1928年</option><option value="1929">1929年</option><option value="1930">1930年</option><option value="1931">1931年</option><option value="1932">1932年</option><option value="1933">1933年</option><option value="1934">1934年</option><option value="1935">1935年</option><option value="1936">1936年</option><option value="1937">1937年</option><option value="1938">1938年</option><option value="1939">1939年</option><option value="1940">1940年</option><option value="1941">1941年</option><option value="1942">1942年</option><option value="1943">1943年</option><option value="1944">1944年</option><option value="1945">1945年</option><option value="1946">1946年</option><option value="1947">1947年</option><option value="1948">1948年</option><option value="1949">1949年</option><option value="1950">1950年</option><option value="1951">1951年</option><option value="1952">1952年</option><option value="1953">1953年</option><option value="1954">1954年</option><option value="1955">1955年</option><option value="1956">1956年</option><option value="1957">1957年</option><option value="1958">1958年</option><option value="1959">1959年</option><option value="1960">1960年</option><option value="1961">1961年</option><option value="1962">1962年</option><option value="1963">1963年</option><option value="1964">1964年</option><option value="1965">1965年</option><option value="1966">1966年</option><option value="1967">1967年</option><option value="1968">1968年</option><option value="1969">1969年</option><option value="1970">1970年</option><option value="1971">1971年</option><option value="1972">1972年</option><option value="1973">1973年</option><option value="1974">1974年</option><option value="1975">1975年</option><option value="1976">1976年</option><option value="1977">1977年</option><option value="1978">1978年</option><option value="1979">1979年</option><option value="1980">1980年</option><option value="1981">1981年</option><option value="1982">1982年</option><option value="1983">1983年</option><option value="1984">1984年</option><option value="1985">1985年</option><option value="1986">1986年</option><option value="1987">1987年</option><option value="1988">1988年</option><option value="1989">1989年</option><option value="1990">1990年</option><option value="1991">1991年</option><option value="1992">1992年</option><option value="1993">1993年</option><option value="1994">1994年</option><option value="1995">1995年</option><option value="1996">1996年</option><option value="1997">1997年</option><option value="1998">1998年</option><option value="1999">1999年</option><option value="2000">2000年</option><option value="2001">2001年</option><option value="2002">2002年</option><option value="2003">2003年</option><option value="2004">2004年</option><option value="2005">2005年</option><option value="2006">2006年</option><option value="2007">2007年</option><option value="2008">2008年</option><option value="2009">2009年</option><option value="2010">2010年</option><option value="2011">2011年</option><option value="2012">2012年</option><option value="2013">2013年</option><option value="2014">2014年</option><option value="2015">2015年</option><option value="2016">2016年</option><option value="2017">2017年</option><option value="2018">2018年</option><option value="2019">2019年</option></select>&nbsp;&nbsp;<select id="vol_reg_month"><option value="">月</option><option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select>&nbsp;&nbsp;<select id="vol_reg_day"><option value="">日</option><option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select><span class="v_result"></span></td>
    </tr><br><br>
    <tr>
        <td>政治面貌：</td>
        <td><input></td>
    </tr><br><br>
    <tr>
        <td>民族：</td>
        <td><select><option value="">请选择</option><option value="4788" selected>汉族</option><option value="4789">蒙古族</option><option value="4790">回族</option><option value="4791">藏族</option><option value="4792">维吾尔族</option><option value="4793">苗族</option><option value="4794">彝族</option><option value="4795">壮族</option><option value="4796">布依族</option><option value="4797">朝鲜族</option><option value="4798">满族</option><option value="4799">侗族</option><option value="4800">瑶族</option><option value="4801">白族</option><option value="4802">土家族</option><option value="4803">哈尼族</option><option value="4804">哈萨克族</option><option value="4805">傣族</option><option value="4806">黎族</option><option value="4807">傈僳族</option><option value="4808">佤族</option><option value="4809">畲族</option><option value="4810">高山族</option><option value="4811">拉祜族</option><option value="4812">水族</option><option value="4813">东乡族</option><option value="4814">纳西族</option><option value="4815">景颇族</option><option value="4816">柯尔克孜族</option><option value="4817">土族</option><option value="4818">达斡尔族</option><option value="4819">仫佬族</option><option value="4820">羌族</option><option value="4821">布郎族</option><option value="4822">撒拉族</option><option value="4823">毛南族</option><option value="4824">仡佬族</option><option value="4825">锡伯族</option><option value="4826">阿昌族</option><option value="4827">普米族</option><option value="4828">塔吉克族</option><option value="4829">怒族</option><option value="4830">乌孜别克</option><option value="4831">俄罗斯族</option><option value="4832">鄂温克族</option><option value="4833">德昂族</option><option value="4834">保安族</option><option value="4835">裕固族</option><option value="4836">京族</option><option value="4837">塔塔尔族</option><option value="4838">独龙族</option><option value="4839">鄂伦春族</option><option value="4840">赫哲族</option><option value="4841">门巴族</option><option value="4842">珞巴族</option><option value="4843">基诺族</option><option value="4845">其他</option><option value="4844">外国血统中国籍人士</option></select><span class="v_result"></span></td>
    </tr><br><br>
    <tr>
        <td>手机：</td>
        <td><input></td>
    </tr><br><br>
    <tr>
        <td align="right" valign="top">服务类别：</td>
        <td>
            <span style="white-space:nowrap;display:inline-block;"><input type="checkbox" value="赛会服务">&nbsp;赛会服务&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="应急救援">&nbsp;应急救援&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="城市运行">&nbsp;城市运行&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="文化教育">&nbsp;文化教育&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="关爱服务">&nbsp;关爱服务&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="社区服务">&nbsp;社区服务&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="绿色环保">&nbsp;绿色环保&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="医疗卫生">&nbsp;医疗卫生&nbsp;&nbsp;</span><span style="white-space:nowrap;display:inline-block;"><input type="checkbox" name="stag_vol" value="其他">&nbsp;其他&nbsp;&nbsp;</span> <input type="text" style="border:0;width:1px;height:1px;" id="stag_vol_val">
            <span class="v_result"><font color=green>最多选择4项</font></span>
        </td>
    </tr><br><br>
</div>
</body>
</html>
