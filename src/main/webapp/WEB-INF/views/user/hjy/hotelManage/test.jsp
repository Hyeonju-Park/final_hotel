<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=hznya2qvqk&submodules=geocoder"></script>

<!------ Include the above in your HEAD tag ---------->

<style type="text/css">

body {
  background: #C5E1A5;
}
form {
  width: 60%;
  margin: 60px auto;
  background: #efefef;
  padding: 60px 120px 80px 120px;
  text-align: center;
  -webkit-box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
  box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
}
label {
  display: block;
  position: relative;
  margin: 40px 0px;
}
.label-txt {
  position: absolute;
  top: -1.6em;
  padding: 10px;
  font-family: sans-serif;
  font-size: .8em;
  letter-spacing: 1px;
  color: rgb(120,120,120);
  transition: ease .3s;
}
.input {
  width: 100%;
  padding: 10px;
  background: transparent;
  border: none;
  outline: none;
}

.line-box {
  position: relative;
  width: 100%;
  height: 2px;
  background: #BCBCBC;
}

.line {
  position: absolute;
  width: 0%;
  height: 2px;
  top: 0px;
  left: 50%;
  transform: translateX(-50%);
  background: #8BC34A;
  transition: ease .6s;
}

.input:focus + .line-box .line {
  width: 100%;
}

.label-active {
  top: -3em;
}

button {
  display: inline-block;
  padding: 12px 24px;
  background: rgb(220,220,220);
  font-weight: bold;
  color: rgb(120,120,120);
  border: none;
  outline: none;
  border-radius: 3px;
  cursor: pointer;
  transition: ease .3s;
}

button:hover {
  background: #8BC34A;
  color: #ffffff;
}





.star-rating {

display: flex;

flex-direction: row-reverse;

font-size: 2.25rem;

line-height: 0px;

justify-content: space-around;

padding: 0 0.2em;

width: 100px;
}

/*기존 라디오 버튼 사라짐*/
.star-rating input {

display: none;

}

.star-rating label {

-webkit-text-fill-color: transparent;

/* Will override color (regardless of order) */

-webkit-text-stroke-width: 2.3px;

-webkit-text-stroke-color: #2b2a29;

cursor: pointer;

}

/*클릭시 변경*/

.star-rating :checked ~ label {

-webkit-text-fill-color: red;

}

/*호버시 변경*/

.star-rating label:hover,

.star-rating label:hover ~ label {

-webkit-text-fill-color: pink;

}
</style>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath }/hjy/hotelreq" enctype="multipart/form-data">
<h1>숙소정보</h1>
  <label>
    <p class="label-txt">카테고리</p>
    <input type="text" name="acate"class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">숙박업소명</p>
    <input type="text" name="aname"class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">전화번호</p>
    <input type="text" name="aphone" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  
  <label>
    <p class="label-txt">주소</p><br>
    <div style="margin-bottom: -30px; z-index: 1; position: relative; text-align: left;">
		<input type="text" id="find" name="aaddress" >
		<input type="button" value="주소 검색" onclick="go()">
	</div>
    <div id="map" style="width: 100%; height:400px;"></div>
    <input type="hidden" name = "axcoordi" id="xcoordi">
    <input type="hidden" name = "aycoordi" id="ycoordi">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">총객실수</p>
    <input type="text" name="atotalroom" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">숙소성급</p>
	<div class="star-rating space-x-4 mx-auto">
		<input type="radio" id="5-stars" name="agrade" value="5" v-model="ratings" />
		<label for="5-stars" class="star pr-4">★</label>
		<input type="radio" id="4-stars" name="agrade" value="4" v-model="ratings" />
		<label for="4-stars" class="star">★</label>
		<input type="radio" id="3-stars" name="agrade" value="3" v-model="ratings" />
		<label for="3-stars" class="star">★</label>
		<input type="radio" id="2-stars" name="agrade" value="2" v-model="ratings" />
		<label for="2-stars" class="star">★</label>
		<input type="radio" id="1-star" name="agrade" value="1" v-model="ratings" />
		<label for="1-star" class="star">★</label>
	</div>
	<div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">대표소개</p>
    <input type="text" name="adetail" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">대표이미지</p>
    <input type="file" name = "file" class="input" multiple="multiple">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <h1>객실 세부 정보</h1>
  <label>
    <p class="label-txt">객실이름</p>
    <input type="text" name="riroomtype" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">객실수</p>
    <input type="text" name="riroom" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">부가서비스</p>
    <input type="text" name="riservice" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">객실크기</p>
    <input type="text" name="risize" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">숙박가능인원</p>
    <input type="text" name="riminper" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">숙박최대인원</p>
    <input type="text" name="rimaxper" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">성수기 1박 기본요금</p>
    <input type="text" name="ripeak" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">준성수기 1박 기본요금</p>
    <input type="text" name="risemipeak" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">비수기 1박 기본요금</p>
    <input type="text" name="rioff" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">대표이미지</p>
    <input type="file" name = "file" class="input"multiple="multiple">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">추가이미지1</p>
    <input type="file" name = "file" class="input"multiple="multiple">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">추가이미지2</p>
    <input type="file" name = "file" class="input"multiple="multiple">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <h3>추가요금설정</h3>
  <label>
    <p class="label-txt">인원추가비용</p>
    <input type="text" name="afpersonnel" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">조식추가비용</p>
    <input type="text" name="afbreakfast" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">침대추가비용</p>
    <input type="text" name="afbed" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  추가하기 -->추가하기누르면 객실세부정보,추가요금설정 한번 더 나오게
  
  <h1>기간정보</h1>
  <label>
    <p class="label-txt">시즌--비수기성수기준성수기선택</p>
    <select name = "peseason" class="input">
    	<option value="비수기">비수기</option>
    	<option value="준성수기">준성수기</option>
    	<option value="성수기">성수기</option>
    </select>
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">시즌 시작날짜</p>
    <input type="date" name="pestart" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">시즌 끝날짜</p>
    <input type="date" name="peend" class="input">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  추가하기 -->추가하기누르면 객실세부정보,추가요금설정 한번 더 나오게<br>
  <button type="submit">신청하기</button>
</form>
</body>
<script type="text/javascript">
$(document).ready(function(){
	  $('.input').focus(function(){
	    $(this).parent().find(".label-txt").addClass('label-active');
	  });

	  $(".input").focusout(function(){
	    if ($(this).val() == '') {
	      $(this).parent().find(".label-txt").removeClass('label-active');
	    };
	  });
	});
	
var xcoordi; 
var ycoordi; 
var map = new naver.maps.Map("map", {
	  center: new naver.maps.LatLng(37.3595316, 127.1052133),
	  zoom: 15,
	  mapTypeControl: true
	});

	var infoWindow = new naver.maps.InfoWindow({
	  anchorSkew: true
	});

	map.setCursor('pointer');

	function searchCoordinateToAddress(latlng) {

	  infoWindow.close();

	  naver.maps.Service.reverseGeocode({
	    coords: latlng,
	    orders: [
	      naver.maps.Service.OrderType.ADDR,
	      naver.maps.Service.OrderType.ROAD_ADDR
	    ].join(',')
	  }, function(status, response) {
	    if (status === naver.maps.Service.Status.ERROR) {
	      if (!latlng) {
	        return alert('ReverseGeocode Error, Please check latlng');
	      }
	      if (latlng.toString) {
	        return alert('ReverseGeocode Error, latlng:' + latlng.toString());
	      }
	      if (latlng.x && latlng.y) {
	        return alert('ReverseGeocode Error, x:' + latlng.x + ', y:' + latlng.y);
	      }
	      return alert('ReverseGeocode Error, Please check latlng');
	    }

	    var address = response.v2.address,
	        htmlAddresses = [];

	    if (address.jibunAddress !== '') {
	        htmlAddresses.push('[지번 주소] ' + address.jibunAddress);
	    }

	    if (address.roadAddress !== '') {
	        htmlAddresses.push('[도로명 주소] ' + address.roadAddress);
	    }

	    infoWindow.setContent([
	      '<div style="padding:10px;min-width:200px;line-height:150%;">',
	      '<h4 style="margin-top:5px;">검색 좌표</h4><br />',
	      htmlAddresses.join('<br />'),
	      '</div>'
	    ].join('\n'));

	    infoWindow.open(map, latlng);
	  });
	}

	function searchAddressToCoordinate(address) {
	  naver.maps.Service.geocode({
	    query: address
	  }, function(status, response) {
	    if (status === naver.maps.Service.Status.ERROR) {
	      if (!address) {
	        return alert('Geocode Error, Please check address');
	      }
	      return alert('Geocode Error, address:' + address);
	    }

	    if (response.v2.meta.totalCount === 0) {
	      return alert('검색결과가 없습니다.');
	    }

	    var htmlAddresses = [],
	      item = response.v2.addresses[0],
	      point = new naver.maps.Point(item.x, item.y);
	      xcoordi = item.x;
	      ycoordi = item.y;

	    if (item.roadAddress) {
	      htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
	    }

	    if (item.jibunAddress) {
	      htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
	    }

	    if (item.englishAddress) {
	      htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
	    }

	    infoWindow.setContent([
	      '<div style="padding:10px;min-width:100px;line-height:150%;">',
	      '<h5 style="margin-top:5px;">검색 주소 : '+ address +'</h5><br />',
	      htmlAddresses.join('<br />'),
	      '</div>'
	    ].join('\n'));

	    map.setCenter(point);
	    infoWindow.open(map, point);
	  });
	}

	function initGeocoder() {
	  if (!map.isStyleMapReady) {
	    return;
	  }

	  map.addListener('click', function(e) {
	    searchCoordinateToAddress(e.coord);
	  });

	  $('#address').on('keydown', function(e) {
	    var keyCode = e.which;

	    if (keyCode === 13) { // Enter Key
	      searchAddressToCoordinate($('#address').val());
	    }
	  });

	  $('#submit').on('click', function(e) {
	    e.preventDefault();

	    searchAddressToCoordinate($('#address').val());
	  });

	  searchAddressToCoordinate('서울시');
	}

	naver.maps.onJSContentLoaded = initGeocoder;
	naver.maps.Event.once(map, 'init_stylemap', initGeocoder);
	
	function go(){
		searchAddressToCoordinate($("#find").val())
		$("#xcoordi").val(xcoordi)
		$("#ycoordi").val(ycoordi)
	}
</script>
</html>