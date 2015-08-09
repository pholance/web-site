<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>妙法莲华经,法华经 - 易度门</title>
    <meta name="description" content="妙法莲华经原文及白话释义，并提供杨宁老师的讲解视频，欢迎观看。">
    <%@include file="/WEB-INF/jspf/header.jspf" %>
    <link rel="stylesheet" href="/resources/video-js/video-js.min.css">
    <link rel="stylesheet" href="/resources/video-js/yidumen-player.css">
</head>
<body>
<!--web head width:990px -->
<%@include file="/WEB-INF/jspf/nav.jspf" %>
<!--/web head -->
<!--web container width:990px-->
<div id="container">
    <div id="video_box_large" style="width:990px; height:441px;">
        <video id="video-player" style="float: left"
               class="video-js vjs-default-skin vjs-big-play-centered"
               poster="/resources/web/images/bg_video.png"
                >您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。
        </video>
        <ul id="listbar" style="width:206px;float:right"></ul>
    </div>
    <div id="General_left">
        <dl id="lotus_intro">
            <dt>漫游妙法莲华</dt>
            <dd><a href="/lotus/2">妙法莲华经在说什么？妙法莲华经在佛法中的地位和价值</a></dd>
            <dd><a href="/lotus/3">妙法莲华经对现代众生的意义</a></dd>
        </dl>
        <dl id="lotus_list_area">
            <dt>原经文及现代白话释义（摘自中华书局出版的《白话佛教十三经》）</dt>
            <dd>
                <ul>
                    <c:forEach var="lotus" items="${lotuses}">
                        <li>${lotus.partIdentifier} <a href="/lotus/${lotus.originalId}">${lotus.title}</a> <span><a
                                href="/lotus/${lotus.vernacularId}">白话释义</a></span></li>
                    </c:forEach>
                </ul>
            </dd>
        </dl>
    </div>
    <div id="General_right">
        <%@include file="/WEB-INF/jspf/weibo.jspf" %>
        <dl class="r_lotus_download">
            <dt>内容下载</dt>
            <dd>
                <dl>
                    <dt>原经文</dt>
                    <dd><a href="http://v3.yidumen.com/doc/妙法莲华经原经文.pdf">PDF格式 <span>2.3M</span></a></dd>
                    <dd><a href="http://v3.yidumen.com/doc/妙法莲华经原经文.rtf">RTF格式 <span>2.2M</span></a></dd>
                </dl>
                <dl>
                    <dt>现代白话释义</dt>
                    <dd><a href="http://v3.yidumen.com/doc/妙法莲华经白话释义.pdf">PDF格式 <span>1.1M</span></a></dd>
                    <dd><a href="http://v3.yidumen.com/doc/妙法莲华经白话释义.rtf">RTF格式 <span>2.0M</span></a></dd>
                </dl>
            </dd>
        </dl>
        <%@include file="/WEB-INF/jspf/exchange.jspf" %>
    </div>
</div>
<!-- -->
<!--web footer width:100% -->
<%@include file="/WEB-INF/jspf/footer.jspf" %>
<script type="text/javascript" src="/resources/video-js/video.js"></script>
<script type="text/javascript" src="/resources/video-js/lang/zh.js"></script>
<script type="text/javascript" src="/resources/video-js/yidumen-player.js"></script>
<script src="/resources/js/normal.js"></script>
<script>
    app.lotusList();
</script>
<script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=914263201"
        charset="utf-8"></script>
</body>
</html>
