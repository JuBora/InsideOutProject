<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/theater.css" />

<section>
	<div>
		<img src="<%=request.getContextPath()%>/images/theaterImage.png" alt="" />
	</div>
	<div id="menu">
        <a href="#1">상영시간표</a>
        <a href="#2">위치/교통</a>
        <a href="#3">관람료</a>
    </div>
    <div id="1"></div>
    <br /><br><br>
    <div id="bar"></div>
    <h2 id="title">상영시간표</h2>
    
    <div>
    	<img src="<%=request.getContextPath()%>/images/left.png" alt="" id="btn-left"/>
        <p id="date">12.08</p>
        <p id="day">토</p>
        <img src="<%=request.getContextPath()%>/images/right.png" alt="" id="btn-right"/>
        <img src="<%=request.getContextPath()%>/images/ratingInfo.png" alt="" id="img-ratingInfo"/>
        <input type="button" value="관람등급 안내" onclick="ratings();" id="btn-ratings" />
    </div>
    <table id=schedule>
        <tr>
            <td rowspan="2" id="movie-title">겨울왕국2</td>
            <td rowspan="2" id="movie-theater">1관<br>
                디지털(자막)</td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo">조조</p><br> 
                <p id="time">08:00</p><br>  
                <p id="seat">215/232</p></td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">10:15</p><br>
                <p id="seat">204/232</p></td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">12:30</p><br>
                <p id="seat">178/232</p></td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">14:45</p><br>
                <p id="seat">89/232</p></td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">17:00</p><br>
                <p id="seat">130/232</p></td>
        </tr>
        <tr>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">19:15</p><br>
                <p id="seat">172/232</p></td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">21:30</p><br>
                <p id="seat">197/232</p></td>
            <td><div id="reservation">
                    <p>10:15~12:08</p><br>
                    <a href="">빠른예매</a></div>
                <p id="jojo"></p><br>
                <p id="time">23:45</p><br>
                <p id="seat">226/232</p></td>
            <td><p id="jojo"></p><br>
                <p id="time"></p><br>
                <p id="seat"></p></td>
            <td><p id="jojo"></p><br>
                <p id="time"></p><br>
                <p id="seat"></p></td>
        </tr>
               
    </table>
    <div id="2"></div>
   	<br /><br><br>
    <div id="bar"></div>
    <h2 id="title">위치/교통</h2>
    <div id="location">
	    <div id="map">
	    	<!-- * 카카오맵 - 지도퍼가기 -->
			<!-- 1. 지도 노드 -->
			<div id="daumRoughmapContainer1576223876110" class="root_daum_roughmap root_daum_roughmap_landing"></div>
	
			<!--2. 설치 스크립트
			* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
	
			<!-- 3. 실행 스크립트 -->
			<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1576223876110",
				"key" : "w8wc",
				"mapWidth" : "500",
				"mapHeight" : "360"
			}).render();
			</script>
	    </div>
	    <div id="mapInfo">
	    	<div id="subwayInfo">
	    	<table id="maptable">
	    		<tr>
	    			<td>
	    				<img src="<%=request.getContextPath()%>/images/subway.png" id="subway" alt="" />
	    			</td>
	    			<td>
	    				<img src="<%=request.getContextPath()%>/images/line2.png" alt=""  id="line2"/>
			   			<img src="<%=request.getContextPath()%>/images/lineNew.png" alt="" id="lineNew"/>
	    			</td>
	    			<td><p>강남역 1번출구</p></td>
	    		</tr>
	    		<tr>
	    			<td	id="subwayTitle"><p>지하철</p></td>
	    			<td>
	    				<img src="<%=request.getContextPath()%>/images/line2.png" alt=""  id="line2"/>
	    			</td>
	    			<td><p>역삼역 3번출구</p></td>
	    		</tr>
	    	</table>
	    	</div>
	    	<div>
	    	<table id="maptable">
	    		<tr>
	    			<td rowspan="2">
	    				<img src="<%=request.getContextPath()%>/images/bus.png" id="bus" alt="" />
	    			</td>
	    			<td id="first">
	    				<p>역삼역, 포스코타워역삼(23-288)</p>
	    			</td>
	    		</tr>
	    		<tr><td><p>강남역(23-813)</p></td></tr>
	    		<tr>
	    			<td id="busTitle"><p>버스</p></td>
	    			<td>강남역 12번출구(23-814)</td>
	    		</tr>
	    	</table>
	    	</div>
	    </div>
    </div>
    <div id="3"></div>
	<div id="bar"></div>
	<h2 id="title">관람료</h2>
    <table id=price>
        <tr><th>상영시간</th>
            <th>성인</th>
            <th>청소년</th>
            <th>경로<br>(만 65세이상)</th>
            <th>미취학 아동<br>(만 4세~ 만 6세)</th>
        </tr>
        <tr><td>조조(첫 회차)</td>
            <td>7,000</td>
            <td>6,000</td>
            <td>5,000</td>
            <td>5,000</td>
        </tr>
        <tr><td>일반(2회차 ~ 24시 전)</td>
            <td>11,000</td>
            <td>9,000</td>
            <td>5,000</td>
            <td>5,000</td>
        </tr>
        <tr><td>심야(24시~)</td>
            <td>9,000</td>
            <td>7,000</td>
            <td>5,000</td>
            <td>5,000</td>
        </tr>
        
    </table>
</section>
<script>
function ratings(){
	var url="<%=request.getContextPath()%>/theater/movieRatings";
	var title="관람등급 안내";
	var spec="left=500px, top=200px, width=650px, height=350px";
	open(url, title, spec);
}
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>