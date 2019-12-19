<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 본문시작 -->
<div class="container">
<!-- 슬릭슬라이드1 -->
     <section class="visual">
         <div class="r"> <img class="img" src="img/몬스터호텔.jpg" alt=""> </div>
         <div class="r"> <img class="img" src="img/도리.jpg" alt=""> </div>
         <div class="r"> <img class="img" src="img/코코.jpg" alt=""> </div>
         <div class="r"> <img class="img" src="img/토이스토리.jpg" alt=""> </div>
    </section> 
    
    <div class="deco"></div><!--구분자-->

<!-- bx 슬라이더2 -->
    <div class="slider">
        <div>
            <img src="./img/M토이스토리4.PNG" alt="">
            <img src="./img/M업.PNG" alt="">
            <img src="./img/M인사이드아웃.PNG" alt="">
            <img src="./img/M인크레더블.PNG" alt="">
        </div>
        <div>
            <img src="./img/M코코.PNG" alt="">
            <img src="./img/M몬스터대학교.PNG" alt="">
            <img src="./img/M라따뚜이.PNG" alt="">
            <img src="./img/M코코.PNG" alt="">
        </div>
        <div>
            <img src="./img/M인사이드아웃.PNG" alt="">
            <img src="./img/M코코.PNG" alt="">
            <img src="./img/M토이스토리4.PNG" alt="">
            <img src="./img/M월E.PNG" alt="">
        </div>
            
    </div><!--div.slider--> 
<!-- bx 슬라이더 2끝  -->

    <div class="deco2"></div><!--구분자-->
            
    <!-- 이벤트 -->
    <div class="con_fig">
        <!-- 이벤트 좌측 -->
        <div class="con_event">
            <span class="square"></span>
            <h3>EVENT</h3>
            <button>당첨자발표</button>
        </div><!--div.con_event-->
        <!-- 이벤트 좌측 끝 -->

    <!--이벤트 배너  -->
    <figure class="snip1283">
        <img src="/img/E2.PNG" alt="sample70"/>
            <figcaption>
                <h3>통신사 할인</h3>
                <p>[할인]LG U+ 제휴된 통신사로 VIP 30% 할인 GOLD 15% Silver 10% 혜택을 지금 누리세요!</p><a href="#" class="read-more">Read More</a>
            </figcaption>
    </figure>

    <figure class="snip1283 hover">
        <img src="/img/E2.PNG" alt="sample71"/>
        <figcaption>
            <h3>마지막주 수요일 할인</h3>
            <p>[할인]매월 마지막주 수요일은 문화의 날 할인! 모든 영화를 5000원에 관람하세요!</p><a href="#" class="read-more">Read More</a>
        </figcaption>
    </figure>
    <figure class="snip1283">
        <img src="/img/E2.PNG" alt="sample76"/>
            <figcaption>
                <h3>더블 포인트 적립</h3>
                <p>[적립]2020/01/01~2020/12/31 PIXAR 전용관 홍보하고 포인트 적립 2배로 받는 방법!</p><a href="#" class="read-more">Read More</a>
            </figcaption>
    </figure>
    </div><!--div con_fig-->
</div><!--div.container-->
            
<!--슬릭슬라이드1 스크립트  -->
<script type="text/javascript">
    $('.visual').slick();
</script>   
<!-- bx슬라이더2  -->
<script>
$(document).ready(function(){
    $('.slider').bxSlider();
});
// evnet hover
$(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );
</script>   
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
