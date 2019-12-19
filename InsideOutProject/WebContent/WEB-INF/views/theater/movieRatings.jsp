<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/theater.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="rating-title"><h2>관람등급 안내</h2></div>
<br />
<table id="movieRating">
	<tr>
		<th>구분</th>
        <th>설명</th>
	</tr>
    <tr><td>
        <img src="<%=request.getContextPath()%>/images/all.png" alt="" id="img-ratings" />
		<p>전체관람가</p>
		</td>
            <td>모든 연령의 고객이 관람 가능</td>
    </tr>
    <tr><td>
    	<img src="<%=request.getContextPath()%>/images/12.png" alt="" id="img-ratings" />
    	<p>12세 관람가</p>
       	</td>
        <td>만 12세 이상(주민등록상 생일기준) 관람 가능<br>
        	만 12세 미만 고객은 보호자(성인) 동반 시 관람 가능</td>
    </tr>
    <tr><td>
    	<img src="<%=request.getContextPath()%>/images/15.png" alt="" id="img-ratings" />
    	<p>15세 관람가</p>
    	</td>
        <td>만 15세 이상(주민등록상 생일기준) 관람 가능<br>
                     만 15세 이상 고객은 보호자(성인) 동반 시 관람 가능</td>
    </tr>
    <tr><td>
        <img src="<%=request.getContextPath()%>/images/adult.png" alt="" id="img-ratings"/>
        <p>청소년 관람 불가</p>
        </td>
        <td>만 18세 이상(주민등록상 생일기준) 관람 가능<br>
            - 만 18세 이상이더라도 고등학교 재학중인 경우 관람 불가<br>
            - 신분증은 지참 필수(구매, 입장 시 신분증 확인)<br>
                     만 18세 미만 고객은 보호자(성인) 동반 시에도 관람 불가</td>
    </tr>
    </table>
</body>
</html>