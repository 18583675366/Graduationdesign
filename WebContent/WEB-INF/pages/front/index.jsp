<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>dg-国内最大的IT技能学习平台</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<meta http-equiv="Cache-Control" content="no-transform ">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/saved_resource.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/newindex.css"
	type="text/css">
<script
	src="${pageContext.request.contextPath}/front/js/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
<%@ include file="../../header.jsp"%>
</head>
<body>
	<div id="myCarousel" class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="active item">
				<img src="http://img.mukewang.com/570668da0001874d20000600.jpg" />
			</div>
			<div class="item">
				<img src="http://img.mukewang.com/570668da0001874d20000600.jpg" />
			</div>
		</div>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
	</div>
	<div id="characters" class="characters idx-minwidth">
		<div class="idx-width">
			<div class="characters-wrap">
				<span class="char-icon1 hide-text">专注IT学习</span> <span
					class="char-icon2 hide-text">聚焦实战开发</span> <span
					class="char-icon3 hide-text">课程完全免费</span>
			</div>
		</div>
	</div>
	<div id="intro1" class="intro intro1 bg-grey idx-minwidth">
		<div class="intro1-wrap idx-width">
			<div class="intro1-star"></div>
			<div class="intro1-video-wrap">
				<div class="intro1-video"></div>
			</div>
			<div class="intro1-text hide-text">精心制作的视频课程。老师都技术大牛实战派。课程内容接地气，实际工作用得着。</div>
		</div>
	</div>
	<div id="intro2" class="intro intro2 bg-white idx-minwidth">
		<div class="intro2-wrap idx-width">
			<div class="intro2-text hide-text">实时交互的在线编程，无需配置任何编程环境，直接就能在线学习编程。省时省力省心。</div>
			<div class="intro2-computer1"></div>
			<div class="intro2-computer2"></div>
		</div>
	</div>
	<div id="intro3" class="intro intro3 bg-grey idx-minwidth">
		<div class="intro3-wrap idx-width">
			<div class="intro3-calendar"></div>
			<div class="intro3-smoke"></div>
			<div class="intro3-rockets"></div>
			<div class="intro3-text hide-text">循序渐近的学习计划，专治各种学习编程迷茫症。有目标有路径，一切尽在掌握中。</div>
		</div>
	</div>
	<div id="intro4" class="intro intro4 bg-white idx-minwidth">
		<div class="intro4-wrap idx-width">
			<div class="intro4-text hide-text">互帮互助的问答社区，有问有答有分享。老师学员同交流，高手小白共进步。</div>
			<div class="intro4-hand"></div>
			<div class="intro4-icon"></div>
		</div>
	</div>
	<div id="mooc-dynamic" class="dynamic bg-grey idx-minwidth">
		<div id="dynamic-wrap" class="dynamic-wrap idx-width">
			<div id="dynamic-left" class="dynamic-left"></div>
			<div id="dynamic-right" class="dynamic-right"></div>


			<ul class="dynamic-group clearfix">



				<li><a href="http://www.imooc.com/mobile/app"><img
						src="${pageContext.request.contextPath}/front/img/57078a5500018d9804000200.jpg"
						alt="手机APP"></a></li>

				<li><a href="http://www.imooc.com/activity/iwatch"
					target="_blank"><img
						src="${pageContext.request.contextPath}/front/img/5677ae970001c70404000200.jpg"
						alt="苹果表"></a></li>

				<li><a href="http://www.imooc.com/course/programdetail/pid/32"
					target="_blank"><img
						src="${pageContext.request.contextPath}/front/img/56a59f870001bd2e04000200.jpg"
						alt="前端学习计划"></a></li>
			</ul>

		</div>
	</div>
	<div class="icourse">
		<div class="incourse-wrap idx-width">
			<h2 class="icourse-title hide-text">课程</h2>
			<ul class="icourse-course clearfix">
				<li><a href="http://www.imooc.com/view/611">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/56d3f1d00001519006000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>栈，先入后出（FILO）</p>
							<span class="l "> 更新至4-4 </span> <span class="r"> 课程时长：
								1小时55分 </span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>数据结构探险—栈篇</h2>
							<span class="l ">2天前更新</span> <span class="r">3218人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/650">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/5716fea00001051a06000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>AndroidStudio使用技巧全集！</p>
							<span class="l "> 更新至3-1 </span> <span class="r"> 课程时长：
								1小时38分 </span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>AndroidStudio技巧全集</h2>
							<span class="l ">3天前更新</span> <span class="r">5932人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/272">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/570779200001fde006000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>一起学习事务与分布式事务原理与实践</p>
							<span class="l "> 更新至2-5 </span> <span class="r"> 课程时长：
								1小时53分 </span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>在线分布式数据库原理与实践</h2>
							<span class="l ">4天前更新</span> <span class="r">22879人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/642">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/56fa20180001d48e06000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>最新最全Swift语言教程第二季！</p>
							<span class="l "> 更新至5-5 </span> <span class="r"> 课程时长：
								4小时13分 </span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>玩儿转Swift 2.0（第二季）</h2>
							<span class="l ">4天前更新</span> <span class="r">2314人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/588">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/569cac7a00015dd706000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>魔法哥带你玩儿转有乐趣的CSS！</p>
							<span class="l "> 更新至4-1 </span> <span class="r"> 课程时长：49分
							</span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>重拾CSS的乐趣</h2>
							<span class="l ">5天前更新</span> <span class="r">7072人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/558">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/5668e3a70001c90006000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>Geely带你认识SpringMVC各种数据绑定</p>
							<span class="l "> 更新至9-1 </span> <span class="r"> 课程时长：
								1小时36分 </span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>SpringMVC数据绑定入门</h2>
							<span class="l ">2016-04-15更新</span> <span class="r">6990人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/218">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/5707635d0001868906000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>IOS开发可以从这里开始</p>
							<span class="l "> 更新至9-1 </span> <span class="r"> 课程时长：
								3小时32分 </span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>征战Objective-C</h2>
							<span class="l ">2016-04-14更新</span> <span class="r">42645人学习</span>
						</div>
				</a></li>
				<li><a href="http://www.imooc.com/view/623">
						<div class="icourse-img">
							<img
								src="${pageContext.request.contextPath}/front/img/56e1321f0001550c06000338-280-160.jpg"
								alt="">
						</div>
						<div class="icourse-intro clearfix">
							<p>使用微博官方SDK快速接入微博登录。</p>
							<span class="l "> 更新至4-1 </span> <span class="r"> 课程时长：55分
							</span>
						</div>
						<div class="icourse-tips clearfix">
							<h2>PHP第三方登录—微博登录</h2>
							<span class="l ">2016-04-14更新</span> <span class="r">4896人学习</span>
						</div>
				</a></li>
			</ul>
			<div class="icourse-footer">
				<a href="http://www.imooc.com/course/list">全部课程</a>
			</div>
		</div>
	</div>
	<div class="joinmooc bg-grey idx-minwidth">
		<div class="joinmooc-wrap idx-width">
			<h2 class="hide-text">dg，只学有用的！</h2>
			<div class="joinbtn">
				<a href="http://www.imooc.com/course/list" class="hide-text">
					立即加入 </a>
			</div>
		</div>
	</div>
	<div class="footer bg-white idx-minwidth">
		<div class="container">
			<div class="footer-wrap idx-width">
				<div class="footer-sns">
					<a href="http://weibo.com/u/3306361973"
						class="footer-sns-weibo hide-text" target="_blank" title="新浪微博">新浪微博</a>
					<a href="javascript:void(0);" class="footer-sns-weixin"
						target="_blank" title="微信"> <i
						class="footer-sns-weixin-expand"></i>
					</a> <a href="http://t.qq.com/mukewang999"
						class="footer-sns-qqweibo hide-text" target="_blank" title="腾讯微博">腾讯微博</a>
					<a href="http://user.qzone.qq.com/1059809142/"
						class="footer-sns-qzone hide-text" target="_blank" title="QQ空间">QQ空间</a>
				</div>
			</div>
			<div class="footer-link">
				<a href="" title="关于我们">关于我们</a> <a href="" title="人才招聘">人才招聘</a> <a
					href="" title="讲师招募">讲师招募</a> <a href="" title="联系我们">联系我们</a> <a
					href="#" title="意见反馈">意见反馈</a>
			</div>
		</div>
	</div>
	<div id="main"></div>
</body>
</html>