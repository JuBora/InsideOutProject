<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/ticket.css" />
	<script>
	$(function() {
	    $(".movie-list>ul>li>a").click(function() {
	        $(".movie-list>ul>li>a").css("background", "#F2F0E4")
	                                .css("color", "black");
	        $(this).css("background", "#333333")
	               .css("color", "#d4d3c9");
	    });

	    $("col-body>ul>li.day>a").click(function() {
	        $(this.child()).css("background", "#333333;");
	    });

	});
	</script>
	<div id="container">
        <div id="ticketing">
            <div class="section section-movie">
                <div id="movie-list" class="col-head">영화</div>
                <div class="col-body" style="height: 560px;">
                    <div class="sortmenu">
                        <a href="#">예매율순</a>
                        <a href="#">가나다순</a>
                    </div>
                    <div class="movie-list">
                        <ul>
                            <li><a href="#">겨울왕국</a></li>
                            <li><a href="#">포드V페라리</a></li>
                            <li><a href="#">나이브스아웃</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                            <li><a href="#">라스트크리스마스</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="section section-date">
                <div id="date-list" class="col-head">날짜</div>
                <div class="col-body" style="height: 560px;">
                    <ul>
                        <li class="month">
                            <div>
                                <span class="year">2019</span>
                                <span class="month">12</span>
                            </div>
                        </li>
                        <li class="day day" data-index="0" date="20191206">
                            <a href="#" onclick="return false;">
                                <span class="dayweek">금</span>
                                <span class="day">6</span>
                            </a>
                        </li>
                        <li class="day day-sat" data-index="0" date="20191207">
                            <a href="#" onclick="return false;">
                                <span class="dayweek">토</span>
                                <span class="day">7</span>
                            </a>
                        </li>
                        <li class="day day-sun" data-index="0" date="20191208">
                            <a href="#" onclick="return false;">
                                <span class="dayweek">일</span>
                                <span class="day">8</span>
                            </a>
                        </li>
                        <li class="day" data-index="0" date="20191209">
                            <a href="#" onclick="return false;">
                                <span class="dayweek">월</span>
                                <span class="day">9</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="section section-time">
                <div id="time-list" class="col-head">시간</div>
                <div class="col-body" style="height: 560px;"></div>
            </div>
        </div>
    </div>
	
<%@ include file="/WEB-INF/views/common/footer.jsp" %>