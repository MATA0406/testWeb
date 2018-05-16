<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<!--HEADER -->
	<div class="header_new">
		<div class="hcont">
			<div class="logo">
				<a href="https://taling.me"><img src="/Content/Images/taling_logo_85_34.png" style="margin-top:20px;"></a>
			</div>
			<div class="search">        		
				<form class="flyout-search" action="/Home/Search/" name="search">
					<div class="lcont">
						<div class="inputlmg"><img src="/Content/Images/main/search.png" onclick="search.submit();"></div>						
						<!--원써니 작업 -->
						<input type="text" name="query" id="searchcss" autocomplete="off"  placeholder="배우고 싶은 수업 또는 튜터를 검색해보세요!" onclick="weekly()" value="">	
						<div class="weekly_best" style="display:none" datasearch="yes">
							<div class="inner_area"style="display:none" datasearch="yes">
								<h3 datasearch="yes">주간 인기 검색어</h3>
								<ul class="list" datasearch="yes">
									<li datasearch="yes"><a href="/Home/Search/?query=메이크업" >메이크업</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=포토샵" >포토샵</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=영상편집" >영상편집</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=보컬" >보컬</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=댄스" >댄스</a></li>
								</ul>
							</div>
							<div style="display:none" datasearch="yes">
								<h3 datasearch="yes">주간 인기 검색어</h3>
								<ul class="list" datasearch="yes">
									<li datasearch="yes"><a href="/Home/Search/?query=코딩" >코딩</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=영어회화" >영어회화</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=마케팅" >마케팅</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=주식" >주식</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=엑셀" >엑셀</a></li>
								</ul>
							</div>
						</div>
					</div>
				</form>
			</div>

			<div class="rcont">
				<ul>
										
					<li class="padding28" data-show="popup-login">로그인&nbsp;&nbsp;</li>
					<li class="padding28" data-show="popup-join">회원 가입</li>
					<li class="padding28"><a href="/Tutor/Register/Manual">튜터 등록</a></li>
					<li class="padding28"><a href="/Support/Intro">서비스소개</a></li>					
									</ul>
			</div>
			<div class="search_back">
			</div>
		</div>
	</div>
<!-- //HEADER -->

<div style="position:relative;overflow:hidden;">
	<div >		
		<!--img class="img_box" src="/Content/Images/main/banner_50_14th.jpg" width="1920" height="450" style="display:none;"-->
		<img class="img_box" src="/Content/Images/main/banner_hanwha_05.jpg" width="1920" height="450" style="display:none;">	
		<img class="img_box" src="/Content/Images/main/banner_womenhealth.jpg" width="1920" height="450" style="display: none;">
		<img class="img_box" src="/Content/Images/main/banner_biz.jpg" width="1920" height="450" style="display: none;">

		<div class="main_center">
		    <div class="a_box">
				<!--a  id="black" class="banner_50_14th" style="display: none;" href="/Home/Search/?code=1"></a-->
				<a  id="black" class="banner_hanwha50000" style="display: none;" href="/Home/Search/?code=6"></a>			
				<a  id="black" class="banner_womenhealth" style="display: none;" href="/Home/Search/?code=5"></a>
				<a  id="black"  target="_blank" class="banner_biz" style="display: none;" href="https://taling.me/BizPro/land_cs.html"></a>				
		    </div>
		    <ul class="label">
				<!--li>
					<a href="/Home/Search/?code=1" onclick="change(0);document.getElementById('bannerIndex').setAttribute('value',1);" onmouseover="change(0);document.getElementById('bannerIndex').setAttribute('value',1);">
					<img src="/Content/Images/main/m_banner_s_50_14th.jpg" class="m_banner_s_50_14th">
					</a>
				</li-->
				<li>
					<a href="/Home/Search/?code=6" onclick="change(0);document.getElementById('bannerIndex').setAttribute('value',1);" onmouseover="change(0);document.getElementById('bannerIndex').setAttribute('value',1);">
					<img src="/Content/Images/main/banner_s_hanwha50000.jpg" class="banner_s_hanwha50000">
					</a>
				</li>
				<li>
					<a href="/Home/Search/?code=5" onclick="change(1);document.getElementById('bannerIndex').setAttribute('value',2);" onmouseover="change(1);document.getElementById('bannerIndex').setAttribute('value',2);">
					<img src="/Content/Images/main/banner_s_womenhealth.jpg" class="banner_s_womenhealth">
					</a>
				</li>
				<li>
					<a   target="_blank" href="https://taling.me/BizPro/land_cs.html" onclick="change(2);document.getElementById('bannerIndex').setAttribute('value',3);" onmouseover="change(2);document.getElementById('bannerIndex').setAttribute('value',3);">
					<img src="/Content/Images/main/banner_s_biz.jpg" class="banner_s_biz">
					</a>
				</li>
				
		    </ul>
		    <input type="hidden" id="bannerIndex" value="0">
		    <input type="hidden" id = "find" value="0"/>
		</div>		
	</div>
</div>
<script type="text/javascript">
	function change(val) {
	    $('.img_box').eq(val).siblings().filter('.img_box').hide();
	    $('a', '.a_box').eq(val).siblings().filter('a').hide();
	    $('.img_box').eq(val).show();
	    $('a', '.a_box').eq(val).show();
	    $('li', '.label').eq(val).css('border', ' 2px solid #4285f4');
	    $('li', '.label').eq(val).siblings().filter('li').css('border', '');
	}

	window.onload = function() {
	    change($('#bannerIndex').val());
	    var num = $('#bannerIndex').val();
	    num++;
	    document.getElementById('bannerIndex').setAttribute('value', num);
	    first_change();

	}


	function first_change() {
	    setInterval(function() {
		if(document.getElementById('find').value==1){}
		else{
		    change($('#bannerIndex').val());
		    var num = $('#bannerIndex').val()
		    if (num == 2)
			document.getElementById('bannerIndex').setAttribute('value', 0);
		    else {
			num++;
			document.getElementById('bannerIndex').setAttribute('value', num);
		    }
		}
	     }, 5000);
	}


	$('li','.label').mouseover(function(){
		document.getElementById('find').setAttribute('value',1);
	}).mouseout(function(){
	    document.getElementById('find').setAttribute('value',0);
	});
</script>

<!-- CONTAINER -->
<div id="container">
	<div class="main2_cont">
		<div class="cate_head">
			<div class="cate2" onmouseover="cate(0)" onclick="goUrl('');">인기수업</div>
			<div class="cate" onmouseover="cate(1)" onclick="goUrl(1);">디자인툴</div>
			<div class="cate" onmouseover="cate(2)" onclick="goUrl(2);">실무역량</div>
			<div class="cate" onmouseover="cate(3)" onclick="goUrl(3);">뷰티</div>
			<div class="cate" onmouseover="cate(4)" onclick="goUrl(4);">프로그래밍</div>
			<div class="cate" onmouseover="cate(5)" onclick="goUrl(5);">외국어</div>
			<div class="cate" onmouseover="cate(6)" onclick="goUrl(6);">음악</div>
			<div class="cate" onmouseover="cate(7)" style="font-size:14px;" onclick="goUrl(7);">라이프스타일</div>
		</div>
		<script>
			function goUrl(val)
			{
				location.href = "/Home/Search/?cateMain="+val;
			}

		</script>

		
				<div class="cont1">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=28"><li class="item"><span>메이크업</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=201,202"><li class="item"><span>포토샵/일러스트</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=193,194,195,196,197,198,199"><li class="item"><span>영상편집</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=116,117"><li class="item"><span>주식투자</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=78"><li class="item"><span>댄스</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=60"><li class="item"><span>보컬</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=27"><li class="item"><span>헬스</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=34"><li class="item"><span>WEB개발</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=13"><li class="item"><span>엑셀</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=41"><li class="item"><span>영어회화</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=76,77,79,81,82,83,86,103,124,125,126,127"><li class="item"><span>이색취미</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/4139">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_368cae464c74ed9ec6871c73f8c2e7da2e649322.png);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										알리바바 수입하여 오픈마켓 투잡하기									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>신촌홍대</b><span>20,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/1168">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_c21237b0f2b99aa5b35100240775c5d1d5abe001.jpg);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									[Ps+Ai|그룹/개인|5월반] 반값 포토샵+일러스트! 이젠 내 생각을 내 손으로 (완벽한 알짜 수업!!)								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대,강남</b><span>12,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/257">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_d034f6c1701134881ab1c650c2896801df83b857.png);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									[마감임박][現탈잉개발자] 프로그래밍이 쉽고 즐거워진다!								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4167">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_8f538cdae13d1dd3d267e3f06d177f4dd6a5261c.png);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									[메이크업]어? 내가 본 그 광고?! 6년차 아티스트와 찾는 인생메이크업~								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남,잠실,건대</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=201"><li class="item"><span>포토샵</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=194"><li class="item"><span>프리미어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=193"><li class="item"><span>에프터이펙트</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=202"><li class="item"><span>일러스트레이터</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=199"><li class="item"><span>영상기획/촬영</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=195"><li class="item"><span>파이널컷</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=209"><li class="item"><span>제품디자인</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=197"><li class="item"><span>영상(기타)</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=204"><li class="item"><span>인디자인</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=206"><li class="item"><span>UX/UI디자인</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=196"><li class="item"><span>시포디</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=3"><li class="item"><span>3D모델링</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/1168">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_c21237b0f2b99aa5b35100240775c5d1d5abe001.jpg);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										[Ps+Ai|그룹/개인|5월반] 반값 포토샵+일러스트! 이젠 내 생각을 내 손으로 (완벽한 알짜 수업!!)									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>신촌홍대,강남</b><span>12,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/3741">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_0ec090681053431082cfc155d4206a5b346097c5.jpg);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									[영상편집] '유튜브,타강의'엔 없는 '쉬운'방법으로 '고퀄'영상 만들기 [파이널컷, 프리미어] 								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>성북,신촌홍대,동작</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/1608">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_98fb6cadbc995e1e09e3b53c6fbc27ee0cff1f0d.png);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									[1:1과외/그룹과외할인]포토샵, 일러스트 스파르타 식으로 불태우며 가르쳐드립니다!								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남</b><span>25,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4057">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_5eb4d411c0cd4d5a0c0e3e4c80f32087b18320be.png);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									(프리미어/포토샵) 유튜버 스타일의 영상을 만들기 위한 영상편집 단기과외!								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>성북</b><span>15,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=13"><li class="item"><span>엑셀</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=11"><li class="item"><span>DataScience</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=188"><li class="item"><span>디지털마케팅</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=12"><li class="item"><span>파워포인트</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=17"><li class="item"><span>취업컨설팅</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=14"><li class="item"><span>프리젠테이션</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=15"><li class="item"><span>창업</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=19"><li class="item"><span>건축</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=23"><li class="item"><span>공모전</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=26"><li class="item"><span>기획서</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=191"><li class="item"><span>브랜딩</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=22"><li class="item"><span>재무회계</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/214">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/7be8f068-63b7-4f2b-b532-0656fd15e900.thumb.jpg);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										[3회완성]엑셀, 인턴/입사 전에 배워가자  									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>종로</b><span>20,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/2914">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_f32be3181a228ebeec09023798741ad6a65dcdde.png);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									[5월개강] 인턴/신입 엑셀 마스터하고 회사에서 이쁨받자! </div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남</b><span>25,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4182">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_04998b5a12b8bce2a5cf0904aba3da96a7dc29d3.png);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									회계사 김대리의 Excellent Excel! (실무최적화, 5월 강의시간표 업데이트)								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/3402">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_9667a23daf7883a6bf70119e3dc2ed31c6f2994e.jpg);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									[R Studio] R로 배우는 데이터분석								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남,신촌홍대</b><span>25,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=28"><li class="item"><span>메이크업</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=27"><li class="item"><span>헬스</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=33"><li class="item"><span>헤어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=29"><li class="item"><span>요가</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=32"><li class="item"><span>퍼스널컬러</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=31"><li class="item"><span>패션</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/4167">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_8f538cdae13d1dd3d267e3f06d177f4dd6a5261c.png);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										[메이크업]어? 내가 본 그 광고?! 6년차 아티스트와 찾는 인생메이크업~									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>강남,잠실,건대</b><span>20,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/3697">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_b5848c03542f1399253a50326d3675210b892c71.png);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									[소도구 무료 증정] 하루 배우고 집에서 혼자 운동하자! 홈트 클래스								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대,강남</b><span>35,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/3588">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_bf67cce088ecbf915fda627dc99875bc3877fc52.jpg);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									[1:1] 샵아티스트와 내얼굴에 챡 붙는 찰떡 메이크업 찾기!								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신림,신림</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/358">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_586891e2a8ebac252dbe68613fc484ea3fa17a00.jpg);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									<2017 탈잉 베스트수업> 연매출 1위, 가격은 그대로인데 수업은 매달 발전하는, 논문 읽는 트레이너								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>성북</b><span>35,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=34"><li class="item"><span>WEB개발</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=54"><li class="item"><span>파이썬</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=35"><li class="item"><span>APP개발</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=52"><li class="item"><span>워드프레스</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=37"><li class="item"><span>해킹</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=39"><li class="item"><span>Database</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=40"><li class="item"><span>알고리즘</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=36"><li class="item"><span>게임제작</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=38"><li class="item"><span>아두이노</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/257">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_d034f6c1701134881ab1c650c2896801df83b857.png);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										[마감임박][現탈잉개발자] 프로그래밍이 쉽고 즐거워진다!									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>강남</b><span>20,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/2992">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_b68b04e4595b5252df7b9f5b43e845b6e311269b.png);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									[파이썬] 웹 크롤링 & 텍스트 분석 마스터하기								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남</b><span>15,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/714">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_12df9dbe5dfdfab1abe029be184cc2fbf2e6cb92.png);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									힘들게 코딩하지 말고,  쉽게 워드프레스로 만드는 웹사이트, 홈페이지, 쇼핑몰 								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대,사당,사당</b><span>25,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/473">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_bee0f5165257b835cf077a336bc11662e93c1b6f.png);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									[Python] 처음 배우는 프로그래밍: 파이썬/웹 기초								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=41"><li class="item"><span>영어회화</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=42"><li class="item"><span>중국어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=44"><li class="item"><span>토익/토플</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=48"><li class="item"><span>프랑스어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=43"><li class="item"><span>일본어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=47"><li class="item"><span>스페인어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=45"><li class="item"><span>오픽/토스</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=46"><li class="item"><span>독일어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=51"><li class="item"><span>외국어(기타)</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=50"><li class="item"><span>러시아어</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=49"><li class="item"><span>영작문</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/140">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/db59f8ac-86d1-4005-b8c8-a1db1a688e6c.thumb.PNG);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										고급영어회화: 죽은 영어 살리기									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>종로</b><span>15,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/3913">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_aec014e6e24ef1a87764bcbb10f2709837310469.png);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									【원데이 50%↓】 상업고 출신 '국가대표 통역사'의 「영어회화 학습법」								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>강남,신촌홍대</b><span>10,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/33">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_f73062fd519e1c7daafcf9f217c0a3752a184219.jpg);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									'매력적인 중국어' - 중국어 기초, 2달안에 끝내세요! '								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대,강남</b><span>20,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4481">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_1cb99c84fd5d43f5ef80e789ba84b375c41fb611.jpg);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									리얼 파리 고급진 부르주아 프랑스어 회화								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>용산</b><span>30,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=60"><li class="item"><span>보컬</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=59"><li class="item"><span>피아노</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=62"><li class="item"><span>기타연주</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=61"><li class="item"><span>미디작곡</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=66"><li class="item"><span>무용</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=63"><li class="item"><span>국악</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=64"><li class="item"><span>디제잉</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=69"><li class="item"><span>드럼</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=65"><li class="item"><span>랩</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=70"><li class="item"><span>바이올린</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=67"><li class="item"><span>우쿨렐레</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=75"><li class="item"><span>성악</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/3152">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_c9282662be0056ae44de34b97362096f8e898a70.jpg);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										조문근 밴드 ) 슈퍼스타 K 조문근의 자신만의 보컬색깔 만들기 !									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>신촌홍대</b><span>40,000￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/3439">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_1692dcfa15c753f60b47a3f88c8ff829b7cf2d99.jpg);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									[해외보컬레슨多] 9년차 보컬트레이너(Ent./Academy) [공연/무대퍼포밍/레코딩] 3기모집								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>노원,신촌홍대,강남</b><span>45,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4135">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_0bd3298e2f05a08201f5ae13cef64c63fbd0b4a2.jpeg);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									[오디션프로TOP16] 현직가수 보컬 디렉터의 명품레슨!!!!								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대,건대</b><span>30,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/1597">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_8db8c2bc482b8edefb2ec786b65d0b6f63e1f944.jpeg);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									[홍대] 재즈피아노, 키보딩스케치(Hiphop/R&B), 반주 디자인(design), 작편곡 개인레슨 !								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대</b><span>50,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				<div class="cont1none">
			<div class="cate_sub_cont">
				<div class="sub_head">
					카테고리
				</div>
				<ul>
					<a href="/Home/Search/?cateSub=78"><li class="item"><span>댄스</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=77"><li class="item"><span>미술</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=79"><li class="item"><span>사진</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=76"><li class="item"><span>캘리그래피</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=86"><li class="item"><span>술</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=81"><li class="item"><span>공예</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=82"><li class="item"><span>여행</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=80"><li class="item"><span>글쓰기</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=83"><li class="item"><span>커피</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=103"><li class="item"><span>심리상담</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=84"><li class="item"><span>요리</span>
							<img src='/Content/Images/mdirection.png'></li></a><a href="/Home/Search/?cateSub=85"><li class="item"><span>다도</span>
							<img src='/Content/Images/mdirection.png'></li></a>				</ul>
			</div>			
			
			<div class="cate_reco_cont">
				<div class="title">추천수업</div>
				<div class="class_cont">
					<a href="/Talent/Detail/2761">
					<div class="main_cont">
						<div class="class_img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_019127aab8dcfd900fe5bf611b9bb80a10c2c267.jpg);">
							<div class="num">1</div>
						</div>
						<div class="class_info_cont">							
							<div class="class_info">
								<div class="text">
									<div class="title">
										(원데이 모집중) 요즘 핫한 트와이스 what is love 배워보자!									</div>
									<div class="info">
										<img src="/Content/Images/mlocation.png"><b>사당</b><span>13,500￦</span>
									</div>
								</div>								
							</div>
						</div>
						<!--div class="class_review">
							"강사님이 쌓아온 노하우들을 짧은 시간안에 전수받을 수 있어서 정말 좋았습니다..."
						</div-->
					</div>
					</a>
					<div class="sub_cont">
						<a href="/Talent/Detail/2949">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_f07c3d8e2cd49adfe58c67855d02c02b704eb591.jpg);" >
								<div class="num">2</div>
							</div>
							<div class="text">
								<div class="title">
									(원데이)세상에몸치는 없다!여러분의 굳티쳐!(트와이스,방탄,블루문,박재범,다만세,립앤힙진행중)								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대</b><span>11,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4245">
						<div class="sub">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_7ed5b9610eeff85b3e0c931fe6519161e8d94180.jpg);">
								<div class="num">3</div>
							</div>
							<div class="text">
								<div class="title">
									(원데이)20세 이상만 Click! 회식,모임 올킬!!! 쏘맥제조에 완벽함을 보여드리겠어요♥								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>종로</b><span>10,000￦</span>
								</div>
							</div>						
						</div>
						</a>
						<a href="/Talent/Detail/4373">
						<div class="sub" style="border-bottom:1px solid #ccc;">
							<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_f5d8a2672feafc2e01bf41606550e88fdbf391df.jpg);">
								<div class="num">4</div>
							</div>
							<div class="text">
								<div class="title">
									(원데이클래스 / 방송댄스) 모모랜드-뿜뿜❣️ 내 매력 뿜뿜 ❣️								</div>
								<div class="info">
									<img src="/Content/Images/mlocation.png"><b>신촌홍대</b><span>12,000￦</span>
								</div>
							</div>						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

				


	<div style="padding-top:20px"></div>
		<a href="https://play.google.com/store/apps/details?id=com.taling"><div class="ad"></div></a>
	<div style="padding-top:20px"></div>

	<div class="gray_box">
		<div class="up-to-date-set-list__container" style="padding:0;height:450px;">
			<div class="cont2_head">		
					<div class="title">인기 원데이</div>
					<div class="sub_title">깔끔하게 딱 하루</div>
			</div>
			<div id="carousel_curation_3" class="carousel slide" data-ride="carousel" style=";">
				<ol class="carousel-indicators" style="margin-top:-50px;position:absolute;">
					<li data-target="#carousel_curation_3" data-slide-to="0" class="active"></li>
					<li data-target="#carousel_curation_3" data-slide-to="1" class=""></li>
					<li data-target="#carousel_curation_3" data-slide-to="2" class=""></li>
					<!--li data-target="#carousel_curation_3" data-slide-to="3" class=""></li>
					<li data-target="#carousel_curation_3" data-slide-to="4" class=""></li>
					<li data-target="#carousel_curation_3" data-slide-to="5" class=""></li-->
				 </ol>
				<div class="carousel-inner up-to-date-set-list" role="listbox">
															<div class="carousel-item active">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/4139'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_368cae464c74ed9ec6871c73f8c2e7da2e649322.png);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">266명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_416eafecc66b5b0af45ff2a50fef2887d7c6128c.png);">
										</div>
										<div class="name">David</div>
										<div class="nick">곰팅이</div>
									</div>
									<div class="title">
										알리바바 수입하여 오픈마켓 투잡하기									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>20,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(2)
											</div>
																						
											<div class="location">
												신촌홍대											</div>
										</div>
									</div>
								</div>
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/4167'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_8f538cdae13d1dd3d267e3f06d177f4dd6a5261c.png);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">288명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_3dae1e60737565266b6d386a0a42131311632aa6.png);">
										</div>
										<div class="name">최예솔</div>
										<div class="nick">o_zut</div>
									</div>
									<div class="title">
										[메이크업]어? 내가 본 그 광고?! 6년차 아티스트와 찾는 인생메이크업~									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>20,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(26)
											</div>
																						
											<div class="location">
												강남,잠실,건대											</div>
										</div>
									</div>
								</div>
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/2761'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_019127aab8dcfd900fe5bf611b9bb80a10c2c267.jpg);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">240명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_63ac38b73f05106a3027b6c53392ae97a00daf66.jpg);">
										</div>
										<div class="name">이도연</div>
										<div class="nick">dy</div>
									</div>
									<div class="title">
										(원데이 모집중) 요즘 핫한 트와이스 what is love 배워보자!									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>13,500<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(23)
											</div>
																						
											<div class="location">
												사당											</div>
										</div>
									</div>
								</div>
															</div>
						</div>	
					</div>
										<div class="carousel-item ">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/3697'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_b5848c03542f1399253a50326d3675210b892c71.png);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">265명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_b1a72e3d13cbc9b527b60a78b77a1afe361fe2ed.png);">
										</div>
										<div class="name">박혜정</div>
										<div class="nick">스노우피치</div>
									</div>
									<div class="title">
										[소도구 무료 증정] 하루 배우고 집에서 혼자 운동하자! 홈트 클래스									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>35,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(9)
											</div>
																						
											<div class="location">
												신촌홍대,강남											</div>
										</div>
									</div>
								</div>
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/3462'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_fea754595a0ff0ef50a307b6a610e69d8e3feee0.png);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">66명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_6811832114c83115bdbe8f33c04c2eb38d487367.png);">
										</div>
										<div class="name">서지유</div>
										<div class="nick">두소장</div>
									</div>
									<div class="title">
										[매달 새로운 강의 업데이트] 생존을 위한 부동산 제대로 알기!									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>21,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(5)
											</div>
																						
											<div class="location">
												신림,사당,대구중앙											</div>
										</div>
									</div>
								</div>
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/3588'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_bf67cce088ecbf915fda627dc99875bc3877fc52.jpg);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">237명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_9006075864f33de04ff3062b30a0bd01d86f3644.jpg);">
										</div>
										<div class="name">조은이</div>
										<div class="nick">빠쁘</div>
									</div>
									<div class="title">
										[1:1] 샵아티스트와 내얼굴에 챡 붙는 찰떡 메이크업 찾기!									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>20,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(19)
											</div>
																						
											<div class="location">
												신림,신림											</div>
										</div>
									</div>
								</div>
															</div>
						</div>	
					</div>
										<div class="carousel-item ">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/3913'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_aec014e6e24ef1a87764bcbb10f2709837310469.png);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">261명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_3ae3b6e09ab7a2317f395e7d4e786e72112122cf.jpg);">
										</div>
										<div class="name">민경원</div>
										<div class="nick">Kay Min</div>
									</div>
									<div class="title">
										【원데이 50%↓】 상업고 출신 '국가대표 통역사'의 「영어회화 학습법」									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>10,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(34)
											</div>
																						
											<div class="location">
												강남,신촌홍대											</div>
										</div>
									</div>
								</div>
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/2949'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_f07c3d8e2cd49adfe58c67855d02c02b704eb591.jpg);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">714명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/s_0c5125d8d7fa7475ddda9e3ec5b4fee0c48baa98.jpg);">
										</div>
										<div class="name">최수연</div>
										<div class="nick">춤토니</div>
									</div>
									<div class="title">
										(원데이)세상에몸치는 없다!여러분의 굳티쳐!(트와이스,방탄,블루문,박재범,다만세,립앤힙진행중)									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>11,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(66)
											</div>
																						
											<div class="location">
												신촌홍대											</div>
										</div>
									</div>
								</div>
																<div class="cont2_class" onclick="javascript:location.href='/Talent/Detail/2676'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_93cdebb61b63f8053d13eacdee816a8c41a3a123.jpg);">
										<!--a class="heart2"></a-->
										<div class="day">1DAY수업</div>
										<div class="d_day">468명 참여</div>
									</div>
									<div class="profile_box">
										<div class="profile" style="background-image: url(//taling.me/Content/Uploads/Profile/02c8f0084331a4feb6e124e02f33816f1deb3572.jpg);">
										</div>
										<div class="name">임현정</div>
										<div class="nick">비키</div>
									</div>
									<div class="title">
										진짜 퍼스널컬러 컨설턴트가 왔다! 이제 톤팡질팡은 끝~									</div>
									<div class="price">
																				<div class="price2">
											<span>￦<span><span>35,000<span>
										</div>
										
									</div>
									<div class="info">
										<div class="info2">
																						<div class="star">
												★★★★★
											</div>
											<div class="review" style="margin-right:15px;">
												(50)
											</div>
																						
											<div class="location">
												신촌홍대											</div>
										</div>
									</div>
								</div>
															</div>
						</div>	
					</div>
									</div>
				   
				<a class="carousel-control-prev" role="button" onclick="$('#carousel_curation_3').carousel('prev');return false;">
					<span class="carousel-control-prev-icon" aria-hidden="true" style="width:20px;height:30px;background-image:url('/Content/Images/btn/btn_prev.png')" ></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" role="button" onclick="$('#carousel_curation_3').carousel('next'); return false;">
					<span class="carousel-control-next-icon" aria-hidden="true" style="width:20px;height:30px;background-image:url('/Content/Images/btn/btn_next.png');"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div> 
	</div>
	
	
	<!--따끈 따끈 리뷰 시작-->

	<div class="gray_box">

		<div class="up-to-date-set-list__container" style="padding:0;height:500px;">
			<div class="cont2_head">	
				<div class="title">따끈따끈 리뷰</div>
				<div class="sub_title">검증된 수업을 들어보세요</div>
			</div>
			<div id="carousel_curation_1" class="carousel slide" data-ride="carousel" style=";">
				<ol class="carousel-indicators" style="margin-top:-50px;position:absolute;">
					<li data-target="#carousel_curation_1" data-slide-to="0" class="active"></li>
					<li data-target="#carousel_curation_1" data-slide-to="1" class=""></li>
					<li data-target="#carousel_curation_1" data-slide-to="2" class=""></li>
				 </ol>
				<div class="carousel-inner up-to-date-set-list" role="listbox">
															<div class="carousel-item active">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/3913#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_aec014e6e24ef1a87764bcbb10f2709837310469.png);">
									</div>
									<div class="title">
										【원데이 50%↓】 상업고 출신 '국가대표 통역사'의 「영어회화 학습법」									</div>
									<div class="sub_title">
										이슬기 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"튜터님께서 정말 고민도 많으시고 연구도 많으시게 수업에서 느껴졌어요 유툽이나 다른곳에서 미드로 회화공부하는걸 많이 들었는데 어떻게해야하는지 딱 감이 안왔거든요 근데 튜터님이랑 같이 연습도하니까 감도 오고 좋았어요 
자료 준비도 열심히 해주시고 강의도 3시간이 넘었는데도 오히려 죄송하다고 하시면서 열심히 강의해주시는 모습이 좋았어요
다른 강의나 컨텐츠도 준비중이라고하셨는데 시작하시면 그 컨텐츠들도 듣고싶네요
									</div>
								</div>
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/308#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_9c4ab3bea59fe3e9e1a65c85c5394c4add844088.png);">
									</div>
									<div class="title">
										[미디레슨]나만의 노래 만들기, 미디작곡법									</div>
									<div class="sub_title">
										Soyoo Park 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"수강생 레벨/음악 취향에 맞게 커리큘럼 준비해주셔서 8주 동안 많은 지식 및 노하우 얻어 갑니다. 무엇보다도 선생님이 음악에 매우매우 열정적이셔서 정말 재밌게 배울 수 있었어요~

수강생 본인이 음악에 대한 열정이 충분하고 또 확실한 목표가 있다면 자유롭게 많은 것을 알아가고 배워갈 수 있는 시간이 될 거 같아요! 매우 매우 추천 드려요!

:)
									</div>
								</div>
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/2877#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_78a1dbc620f692f3c9387c4fd7f46fa19af7a8ee.jpg);">
									</div>
									<div class="title">
										몸치탈출,댄스기초,얼반,걸스힙합 YSDC!! (댄스강사4년차)									</div>
									<div class="sub_title">
										Nari Ryu 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"양갱쌤 춤도 너무 잘추시고 세세하게 제가 원하는것 위주로 가르쳐주세요!! 개인레슨으로 꾸준히 배우고 있습니다 ㅎㅎ									</div>
								</div>
																						
							</div>
						</div>					
					</div>
										<div class="carousel-item ">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/308#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_9c4ab3bea59fe3e9e1a65c85c5394c4add844088.png);">
									</div>
									<div class="title">
										[미디레슨]나만의 노래 만들기, 미디작곡법									</div>
									<div class="sub_title">
										Yesul Kim 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"실제 미디작곡시 활용할 수 있는 코드나 악기 조합들을 가르쳐주셔서 수업이 더 흥미로웠습니다. 초보임에도 불구하고 스스로 해보는 기회를 많이 주셔서 머릿속에 더 잘 들어오는 것 같았어요! 수업준비도 철저하시고 얻는 것도 많았던 수업입니다.									</div>
								</div>
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/4477#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_924b5140b06bedf63756559ed8f07e5605fb2d25.jpg);">
									</div>
									<div class="title">
										[원데이]미국주식, 내 손으로 직접 투자하자									</div>
									<div class="sub_title">
										임민선 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"1:1 강의 진행하였으며,
무엇보다 주식투자 자체를 쉽고 재밌게 알려주셔서
저같은 왕초보에게 정말 유익했습니다.

친숙한 기업들부터 시작해서
저만의 맞춤 포트폴리오를 구성하는 법을
배울 수 있어 좋았습니다.

무엇보다 튜터님의 실제 사례와 경험담,
그리고 열정넘치는 강의에
시간 가는 줄 모르고 있었습니다ㅎㅎ

아쉬웠던 점은 아무래도 하루만에
모든 걸 다 배우려니 시간적 한계가 있었습니다 ㅠㅠ

그래도 수업 이후에도 지속적으로 질문에
상세히 관리해주셔서 도움이 많이 되고 있습니다.

추후에 원데이 클래스 말고
지속적으로 이어지는 클래스 열어주신다고 했는데
100% 재수강 예정입니다!!									</div>
								</div>
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/4420#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_a79190002d0f6a6757198e3b5abd24708909da94.png);">
									</div>
									<div class="title">
										[1:1]현직 "피부 관리사"가 찾아주는 내 얼굴 맞춤 스킨케어 ☻→☺									</div>
									<div class="sub_title">
										송민경 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"피부관리는 늘 관심있었는데 
막연하기만 했는데 
기초 관리 순서와 
제가 일상에서 할 수 있는 방법
그리고 제품과 섞어쓰면 효과 볼 수 있는 여러 제품등을 상세히 알려주셔서 좋았어요
제품 추천을 해달라하면 중간가격과 고가사이 제품 여러개를 제공해주셔서 고르기 좋은듯 해요
배운대로만 했는데 다음날 화장 먹는게 다르네요
하루만 해도 내가 알고
한달을 하면 남이 안다니 믿고 열심히 관리해보겠습니다:)
피드백도 계속 해주신다니 든든해요									</div>
								</div>
																						
							</div>
						</div>					
					</div>
										<div class="carousel-item ">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/3913#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_aec014e6e24ef1a87764bcbb10f2709837310469.png);">
									</div>
									<div class="title">
										【원데이 50%↓】 상업고 출신 '국가대표 통역사'의 「영어회화 학습법」									</div>
									<div class="sub_title">
										LeeBohye 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"효과적인 영어 학습법에 대한 구체적인 방법과 다양한 예시들을 서로 비교하면서 근거를 가지고 접근하는게 좋았구요, 미드공부법에 대해서 그 자리에서 맛보기로 살짝 진행해주시는 것도 실질적으로 혼자 공부할 때 많이 도움이 될 거 같았어 좋았습니다. 컨텐츠가 굉장히 알찼고 도움이 많이 되었습니다. 알려주신 방법으로 공부 시작하여 영어 회화 실력이 늘었으면 좋겠습니다^^ 감사합니당									</div>
								</div>
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/4167#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_8f538cdae13d1dd3d267e3f06d177f4dd6a5261c.png);">
									</div>
									<div class="title">
										[메이크업]어? 내가 본 그 광고?! 6년차 아티스트와 찾는 인생메이크업~									</div>
									<div class="sub_title">
										이진명 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"만족만족이요~!! 수업 끝난 후 쫌 지났지만 이제서야 후기남겨요.
2시간이라는 시간이 정말 금방갈 정도로 유익하고 배우는 재미가 있었어요. 본인이 가지고 있는 화장품을 활용하여 화장을 배운다는게 제일 좋았고 튜터님께 배운걸 기억하며 화장을 하고 있어요~^^									</div>
								</div>
																<div class="cont3_class" onclick="javascript:location.href='/Talent/Detail/358#review'">
									<div class="img" style="background-image: url(//taling.me/Content/Uploads/Cover/s_586891e2a8ebac252dbe68613fc484ea3fa17a00.jpg);">
									</div>
									<div class="title">
										<2017 탈잉 베스트수업> 연매출 1위, 가격은 그대로인데 수업은 매달 발전하는, 논문 읽는 트레이너									</div>
									<div class="sub_title">
										최종운 수강생&nbsp;&nbsp;<font style="font-weight:100;letter-spacing:0.3px;">2018-05-15</font>
									</div>
									<div class="text">
										"약 3개월정도 윤하쌤께 트레이닝 받은 학생입니다. 평소 콤플렉스 탈출을 위해 간헐적으로 운동을 스스로 진행해왔던 상황에서 이대로는 제자리 걸음이지 않을까라는 생각에 PT를 신청해 수업을 들었습니다.

제가 경험한 소중한 배움을 추천하고자 글을 남깁니다.

제 목표는 운동에 대한 큰 틀을 익히고 방법을 마스터하여 원하는 기간동안 스스로 운동할 수 있게 되는 것이었습니다.

첫번째 목표였던 운동에 대한 큰틀을 익히고자 한 부분에 대해서 말씀드리자면 평소 미디어를 통해 잘못 알고 있었던 사실들, 단지 몸이 나보다 좋다는 이유만으로 믿고있던 친구들의 지침들에 대해 옳은 부분은 과학적인 이유를 들어 완전히 이해하고, 틀린 부분은 완벽히 바로잡을 수 있었습니다.

생각없이 기계적으로 동작만을 반복하는 재미없는 운동은 몸의 구조를 이해하고 근육의 움직임을 느끼는 섬세한 작업이 되었습니다. 이 과정이 앞으로의 장기적, 단기적 운동습관에도 큰 영향을 미칠 것이라는 느낌을 강하게 받았습니다.

두번째 목표인 제가 원하는 기간동안 규칙적으로, 올바른 자세와 함께 운동할 수 있다는 믿음 또한 생겼습니다.
단순히 들어올리거나 민다는 느낌으로 진행했던 동작들이 사실은 근육 사슬 하나하나의 섬세한 상호작용으로 이루어져야 한다는 사실과 그 동작을 수행하는 적절한 근육 컨트롤의 방법도 빠르게 익혔습니다. 튜티의 상황에 맞는 조언과 앞으로의 방향성을 제시해 주셔서 장기적으로 큰 도움이 될 것 같습니다.

다시한번 박윤하 튜터님의 헬스를 추천 드립니다!									</div>
								</div>
																						
							</div>
						</div>					
					</div>
									</div>
				   
				<a class="carousel-control-prev" role="button" onclick="$('#carousel_curation_1').carousel('prev');return false;">
					<span class="carousel-control-prev-icon" aria-hidden="true" style="width:20px;height:30px;background-image:url('/Content/Images/btn/btn_prev.png')" ></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" role="button" onclick="$('#carousel_curation_1').carousel('next'); return false;">
					<span class="carousel-control-next-icon" aria-hidden="true" style="width:20px;height:30px;background-image:url('/Content/Images/btn/btn_next.png');"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div> 
	</div>
	<div style="padding-top:50px"></div>
	

	<!--따끈 따끈 리뷰 끝-->	
	
	<!--탈잉 갤러리 시작-->

	<!--div class="gray_box">

		<div class="up-to-date-set-list__container" style="padding:0;height:450px;">
			<div class="cont2_head" >
		
					<div class="title">Taling Contents</div>
					<div class="sub_title"></div>
				</div>
			<div id="carousel_curation_2" class="carousel slide" data-ride="carousel" style=";">
				<ol class="carousel-indicators" style="margin-top:-50px;position:absolute;">
					<li data-target="#carousel_curation_2" data-slide-to="0" class="active"></li>
					<li data-target="#carousel_curation_2" data-slide-to="1" class=""></li>
					<li data-target="#carousel_curation_2" data-slide-to="2" class=""></li>
				 </ol>
				<div class="carousel-inner up-to-date-set-list" role="listbox">
															<div class="carousel-item active">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
															
							</div>
						</div>					
					</div>
										<div class="carousel-item ">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
															
							</div>
						</div>					
					</div>
										<div class="carousel-item ">
						 <div class="cont2_box">	
							<div class="cont2" >
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
																<div class="cont4_class">
									<div class="img">
									</div>
									<div class="title">
										MAC아티스트의 원데이 메이크업 어쩌구 원데이 메이크업
									</div>
									<div class="sub_title">
										조회수 200회 1일전
									</div>
								</div>
															
							</div>
						</div>					
					</div>
										 	
				</div>
				   
				<a class="carousel-control-prev" role="button" onclick="$('#carousel_curation_2').carousel('prev');return false;">
					<span class="carousel-control-prev-icon" aria-hidden="true" style="width:20px;height:30px;background-image:url('/Content/Images/btn/btn_prev.png')" ></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" role="button" onclick="$('#carousel_curation_2').carousel('next'); return false;">
					<span class="carousel-control-next-icon" aria-hidden="true" style="width:20px;height:30px;background-image:url('/Content/Images/btn/btn_next.png');"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div> 
		
		<div style="padding-top:50px"></div>
	</div-->
	

	<!-- 탈잉 갤러리 끝-->	
	</div>

</div>
<!-- //CONTAINER -->
<div class="footer">
	<div class="footer_cont">
		<div class="info_box">
			<div class="info">
				<b>COMPANY</b>
				<ul>
					<li><a href="/Support/Intro">서비스 소개</a></li>
					<li><a href="http://blog.naver.com/taling_me" target="_blank">블로그</a></li>
					<li><a href="http://news.joins.com/article/20030058" target="_blank">언론보도</a></li>
				</ul>
			</div>
			<div class="info">
				<b>POLICIES</b>
				<ul>
					<li><a href="/Support/Rule">이용약관</a></li>
					<li><a href="/Support/PayRule">결제서비스약관</a></li>
					<li><a href="/Support/Privacy">개인정보취급방침</a></li>
				</ul>
			</div>
			<div class="info">
				<b>SUPPORT</b>
				<ul>
					<li><a href="/Support/FAQ">FAQ</a></li>
					<li><a href="/Support/Center/">탈잉센터</a></li>
				</ul>
			</div>
		</div>
		<div class="info_box2">
			<div class="info">
				<b>TALING CENTER</b>
				<ul>
					<li><img src="/Content/Images/yellow.png">&nbsp;KAKAO 옐로우ID / @탈잉센터</li>
					<li>운영시간 / 평일 10:00~19:00</li>
				</ul>
			</div>
		</div>
		<div style='overflow:hidden;padding-top:79px'>
			<div class="bt_info">
				상호 : (주)탈잉 | 주소 : 서울특별시 강남구 선릉로 551, 5층(역삼동) | 사업자등록번호 : 767-88-00630 | 대표자명 : 김윤환<br>
				Copyright ⓒ2018 taling inc, ltd. All rights reserved
			</div>
			<div class="logo_box">
				<a href="https://www.facebook.com/taling.me" target="_blank"><img src="/Content/Images/footer/ic_sns_facebook_38_38.png"></a>
				<a href="https://www.instagram.com/taling_insta/" target="_blank"><img src="/Content/Images/footer/ic_sns_instagram_38_38.png"></a>
				<a href="https://www.youtube.com/channel/UCuFmmpVLaNNFoy-cHqELl_A" target="_blank"><img src="/Content/Images/footer/ic_sns_youtube_38_38.png"></a>
			</div>
			
		</div>
	</div>
</div>
 
       
<div id="popup-login" class="popup popup-login" data-hide="popup-login">
	<div class="popup-content">
		<h1>탈잉에 오신 것을 환영해요!</h1>
		<p>
			<strong>탈잉</strong>은 서로 간 재능을 연결해<br />
			모두의 경쟁력을 높이는 플랫폼 서비스입니다.
		</p>
		<button id="btn-popup-login-facebook" type="button" class="btn btn-facebook">
			<img src="/Content/Images/btn-login-facebook.png" />
		</button>
		<div>- 또는 -</div>
		<form action="#" method="post" id="frm-login">
			<input type="text" id="email" name="email" value="" class="form-control" placeholder="Email" />
			<input type="password" id="password" name="password" value="" class="form-control" placeholder="Password" />			
			<div class="chk-keep-login-container">
				<input type="checkbox" name="keepLogin" id="chk-keep-login" /> <label for="chk-keep-login">로그인 유지</label>
			</div>
			<input type="submit" value="이메일 아이디로 로그인" class="btn btn-submit"/>
		</form>
		<a href="/Account/FindPassword" class="btn-find-password">비밀번호를 잊으셨다면</a>
		<hr />
		<div class="box-promote">
			탈잉 회원이 아니세요? <a href="#" data-hide="popup-login" data-show="popup-join">당장 가입</a>
		</div>
	</div>
</div>
<div id="popup-join" class="popup popup-join" data-hide="popup-join">
	<div class="popup-content">
		<h1>탈잉 회원가입</h1>
		<p>
			회원으로 가입하시면<Br>
			<strong>탈잉</strong>의 모든 서비스를 이용하실 수 있습니다
		</p>
		<button id="btn-popup-join-facebook" type="button" class="btn btn-facebook">
			<img src="/Content/Images/btn-join-facebook.png" />
		</button>
		<div style="line-height: 1">- 또는 -</div>
		<form action="#" method="post" id="frm-join">
			<input type="text" name="name" value="" class="form-control" placeholder="Name" />
			<input type="text" name="email" value="" class="form-control" placeholder="Email" />
			<input type="password" name="password" value="" class="form-control" placeholder="Password" />
			<input type="password" name="confirm" value="" class="form-control" placeholder="Confirm Password" />
			<div class="box-accept-terms">
				<input id="chk-accept-terms" type="checkbox" name="accept" value="" class="checkbox-inline" />
				<label for="chk-accept-terms">
					<a href="/Support/Rule" target="_blank">탈잉이용약관</a> 및
					<a href="/Support/Rule" target="_blank">개인정보취급방침</a>에 동의합니다
				</label>
			</div>
			<input type="submit" value="이메일 아이디로 가입" class="btn btn-submit" />
			
		</form>
		<hr />
		<div class="box-promote">
			이미 탈잉 회원이세요? <a href="#" data-hide="popup-join" data-show="popup-login">로그인</a>
		</div>
	</div>
</div>

<div id="popup-prof" class="popup popup-join"  data-hide="popup-prof">
	<div class="popup-content">
		<h1>탈잉 수업 추천</h1>
		<div>
			님께 맞는 수업 추천을 위해<br>
			아래 정보를 알려주세요
		</div>		
		<form action="#" method="post" id="frm-prof">
		<input type="hidden" id="man" name="man" value="1">
		<input type="hidden" id="level" name="level" value="1">
			
			<div class="subtit2">나이</div>
			<div style="margin:0 auto;text-align:left;">
				<select id="year" name="year">
					<option>출생년도</option>
										<option value="1960">1960</option>
										<option value="1961">1961</option>
										<option value="1962">1962</option>
										<option value="1963">1963</option>
										<option value="1964">1964</option>
										<option value="1965">1965</option>
										<option value="1966">1966</option>
										<option value="1967">1967</option>
										<option value="1968">1968</option>
										<option value="1969">1969</option>
										<option value="1970">1970</option>
										<option value="1971">1971</option>
										<option value="1972">1972</option>
										<option value="1973">1973</option>
										<option value="1974">1974</option>
										<option value="1975">1975</option>
										<option value="1976">1976</option>
										<option value="1977">1977</option>
										<option value="1978">1978</option>
										<option value="1979">1979</option>
										<option value="1980">1980</option>
										<option value="1981">1981</option>
										<option value="1982">1982</option>
										<option value="1983">1983</option>
										<option value="1984">1984</option>
										<option value="1985">1985</option>
										<option value="1986">1986</option>
										<option value="1987">1987</option>
										<option value="1988">1988</option>
										<option value="1989">1989</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										<option value="2006">2006</option>
										<option value="2007">2007</option>
										<option value="2008">2008</option>
										<option value="2009">2009</option>
										<option value="2010">2010</option>
										<option value="2011">2011</option>
										<option value="2012">2012</option>
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
									</select>
			</div>
			
			<div class="subtit">성별</div>
			<div class="subbox" id="box1">
				<div class="levelbox on" id="man1" onclick="boxclick(1);">
					<img src="/Content/Images/icon_man_on.png" width="20px"> 남자
				</div>
				<div class="levelbox" id="man2" onclick="boxclick(2);">
					<img src="/Content/Images/icon_woman_off.png" width="20px"> 여자
				</div>
			</div>
			<div class="subtit">직업</div>
			<div id="box2">
				<div class="subbox">
					<div class="levelbox on" id="level1" onclick="boxclick2(1);">
						<img src="/Content/Images/icon_unv_on.png" width="20px">대학생
					</div>
					<div class="levelbox" id="level2" onclick="boxclick2(2);">
						<img src="/Content/Images/icon_worker_off.png" width="20px">직장인
					</div>				
				</div>
				<div style="margin:0 auto;overflow:hidden;">
					<div class="levelbox" id="level3" onclick="boxclick2(3);">
						<img src="/Content/Images/icon_youths_off.png" width="20px">취업준비생
					</div>
					<div class="levelbox" id="level4" onclick="boxclick2(4);">
						<img src="/Content/Images/icon_homemaker_off.png" width="20px">기타
					</div>				
				</div>
			</div>
			<div style="margin:0 auto;overflow:hidden;padding-top:30px;">
			<input type="submit" value="등록하기" class="btn btn-submit" />
			</div>
		</form>

		<script>
			function boxclick(val)
			{
				var area = $('#box1');
				area.find('div').removeClass('on');
				
				$('#man1').find('img').attr('src', '/Content/Images/icon_man_off.png');
				$('#man2').find('img').attr('src', '/Content/Images/icon_woman_off.png');				

				$('#man'+val).addClass('on');
				if(val==1)
				{
					$('#man'+val).find('img').attr('src', '/Content/Images/icon_man_on.png');
				}
				else
				{
					$('#man'+val).find('img').attr('src', '/Content/Images/icon_woman_on.png');
				}
				$('#man').val(val);
			}

			function boxclick2(val)
			{
				var area = $('#box2');
				area.find('div').removeClass('on');
				
				$('#level1').find('img').attr('src', '/Content/Images/icon_unv_off.png');
				$('#level2').find('img').attr('src', '/Content/Images/icon_worker_off.png');
				$('#level3').find('img').attr('src', '/Content/Images/icon_youths_off.png');
				$('#level4').find('img').attr('src', '/Content/Images/icon_homemaker_off.png');


				$('#level'+val).addClass('on');
				if(val==1)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_unv_on.png');
				}
				else if(val==2)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_worker_on.png');
				}
				else if(val==3)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_youths_on.png');
				}
				else if(val==4)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_homemaker_on.png');
				}
				$('#level').val(val);
			}
		</script>
		
	</div>
</div>
</div>
</body>
</html>