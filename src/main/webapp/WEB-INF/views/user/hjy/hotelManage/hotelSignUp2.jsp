<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.gm-style .gm-style-mtc label, .gm-style .gm-style-mtc div {
	font-weight: 400
}

.gm-style .gm-style-mtc ul, .gm-style .gm-style-mtc li {
	box-sizing: border-box
}
</style>
<style>
.gm-control-active>img {
	box-sizing: content-box;
	display: none;
	left: 50%;
	pointer-events: none;
	position: absolute;
	top: 50%;
	transform: translate(-50%, -50%)
}

.gm-control-active>img:nth-child(1) {
	display: block
}

.gm-control-active:hover>img:nth-child(1), .gm-control-active:active>img:nth-child(1)
	{
	display: none
}

.gm-control-active:hover>img:nth-child(2), .gm-control-active:active>img:nth-child(3)
	{
	display: block
}
</style>
<link type="text/css" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans:400,500,700|Google+Sans+Text:400">
<style>
.gm-ui-hover-effect {
	opacity: .6
}

.gm-ui-hover-effect:hover {
	opacity: 1
}
</style>
<style>
.gm-style .gm-style-cc a, .gm-style .gm-style-cc button, .gm-style .gm-style-cc span,
	.gm-style .gm-style-mtc div {
	font-size: 10px;
	box-sizing: border-box
}
</style>
<style>
@media print {
	.gm-style .gmnoprint, .gmnoprint {
		display: none
	}
}

@media screen {
	.gm-style .gmnoscreen, .gmnoscreen {
		display: none
	}
}
</style>
<style>
@
keyframes beginBrowserAutofill { 0%{
	
}

to {
	
}

}
@
keyframes endBrowserAutofill { 0%{
	
}

to {
	
}

}
.pac-container {
	background-color: #fff;
	position: absolute !important;
	z-index: 1000;
	border-radius: 2px;
	border-top: 1px solid #d9d9d9;
	font-family: Arial, sans-serif;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden
}

.pac-logo:after {
	content: "";
	padding: 1px 1px 1px 0;
	height: 18px;
	box-sizing: border-box;
	text-align: right;
	display: block;
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/powered-by-google-on-white3.png);
	background-position: right;
	background-repeat: no-repeat;
	background-size: 120px 14px
}

.hdpi.pac-logo:after {
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/powered-by-google-on-white3_hdpi.png)
}

.pac-item {
	cursor: default;
	padding: 0 4px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	line-height: 30px;
	text-align: left;
	border-top: 1px solid #e6e6e6;
	font-size: 11px;
	color: #999
}

.pac-item:hover {
	background-color: #fafafa
}

.pac-item-selected, .pac-item-selected:hover {
	background-color: #ebf2fe
}

.pac-matched {
	font-weight: 700
}

.pac-item-query {
	font-size: 13px;
	padding-right: 3px;
	color: #000
}

.pac-icon {
	width: 15px;
	height: 20px;
	margin-right: 7px;
	margin-top: 6px;
	display: inline-block;
	vertical-align: top;
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/autocomplete-icons.png);
	background-size: 34px
}

.hdpi .pac-icon {
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/autocomplete-icons_hdpi.png)
}

.pac-icon-search {
	background-position: -1px -1px
}

.pac-item-selected .pac-icon-search {
	background-position: -18px -1px
}

.pac-icon-marker {
	background-position: -1px -161px
}

.pac-item-selected .pac-icon-marker {
	background-position: -18px -161px
}

.pac-placeholder {
	color: gray
}

.pac-target-input:-webkit-autofill {
	animation-name: beginBrowserAutofill
}

.pac-target-input:not(:-webkit-autofill) {
	animation-name: endBrowserAutofill
}
</style>
<style>
@
keyframes beginBrowserAutofill { 0%{
	
}

to {
	
}

}
@
keyframes endBrowserAutofill { 0%{
	
}

to {
	
}

}
.pac-container {
	background-color: #fff;
	position: absolute !important;
	z-index: 1000;
	border-radius: 2px;
	border-top: 1px solid #d9d9d9;
	font-family: Arial, sans-serif;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden
}

.pac-logo:after {
	content: "";
	padding: 1px 1px 1px 0;
	height: 18px;
	box-sizing: border-box;
	text-align: right;
	display: block;
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/powered-by-google-on-white3.png);
	background-position: right;
	background-repeat: no-repeat;
	background-size: 120px 14px
}

.hdpi.pac-logo:after {
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/powered-by-google-on-white3_hdpi.png)
}

.pac-item {
	cursor: default;
	padding: 0 4px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	line-height: 30px;
	text-align: left;
	border-top: 1px solid #e6e6e6;
	font-size: 11px;
	color: #999
}

.pac-item:hover {
	background-color: #fafafa
}

.pac-item-selected, .pac-item-selected:hover {
	background-color: #ebf2fe
}

.pac-matched {
	font-weight: 700
}

.pac-item-query {
	font-size: 13px;
	padding-right: 3px;
	color: #000
}

.pac-icon {
	width: 15px;
	height: 20px;
	margin-right: 7px;
	margin-top: 6px;
	display: inline-block;
	vertical-align: top;
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/autocomplete-icons.png);
	background-size: 34px
}

.hdpi .pac-icon {
	background-image:
		url(https://maps.gstatic.com/mapfiles/api-3/images/autocomplete-icons_hdpi.png)
}

.pac-icon-search {
	background-position: -1px -1px
}

.pac-item-selected .pac-icon-search {
	background-position: -18px -1px
}

.pac-icon-marker {
	background-position: -1px -161px
}

.pac-item-selected .pac-icon-marker {
	background-position: -18px -161px
}

.pac-placeholder {
	color: gray
}

.pac-target-input:-webkit-autofill {
	animation-name: beginBrowserAutofill
}

.pac-target-input:not(:-webkit-autofill) {
	animation-name: endBrowserAutofill
}
</style>
<style>
.gm-style-pbc {
	transition: opacity ease-in-out;
	background-color: rgba(0, 0, 0, 0.45);
	text-align: center
}

.gm-style-pbt {
	font-size: 22px;
	color: white;
	font-family: Roboto, Arial, sans-serif;
	position: relative;
	margin: 0;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%)
}
</style>
<style>
.gm-style img {
	max-width: none;
}

.gm-style {
	font: 400 11px Roboto, Arial, sans-serif;
	text-decoration: none;
}
</style>
<!-- Google Tag Manager -->
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="//www.googletagmanager.com/gtm.js?id=GTM-WGD2KX&amp;gtm_auth=tNWdwrBSQ3HlG4hXjrfEog&amp;gtm_preview=env-707&amp;gtm_cookies_win=x"></script>
<script>
	(function(w, d, s, l, i, a, p) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl + '&gtm_auth='
				+ a + '&gtm_preview=' + p + '&gtm_cookies_win=x';
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-WGD2KX',
			'tNWdwrBSQ3HlG4hXjrfEog', 'env-707');
</script>
<!-- End Google Tag Manager -->

<title>J6 Homes | 숙소를 등록해 추가 수익을 올려보세요!</title>
<meta name="description"
	content="Register your property on Asia’s global hotel booking site. Manage your rates, availability and hotel content">
<meta name="keywords"
	content="lodging, accommodation, manage your hotel, Agoda Extranet, manage your rates, availability, hotel content, register your hotel, list your hotel, sign up your property">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<link rel="canonical" href="https://ycs.agoda.com">
<meta http-equiv="content-language" content="en">
<meta property="og:site_name" content="Agoda YCS">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow">

<script type="text/javascript"
	src="//cdn5.agoda.net/ycs/Scripts/libs/boomerang/1.0.0/boomerang_nav.min.js"
	async=""></script>
<script>
	// Modern browsers
	if (document.addEventListener) {
		document.addEventListener("onBoomerangLoaded", function(e) {
			// e.detail.BOOMR is a reference to the BOOMR global object
			e.detail.BOOMR.init({
				//set beacon to project's BoomController
				beacon_url : "/ko-kr/Boom/boomerangLog/0",
				beacon_type : "POST"
			});
		});
	}
	// IE 6, 7, 8 we use onPropertyChange and look for propertyName === "onBoomerangLoaded"
	else if (document.attachEvent) {
		document.attachEvent("onpropertychange", function(e) {
			if (!e)
				e = event;
			if (e.propertyName === "onBoomerangLoaded") {
				// e.detail.BOOMR is a reference to the BOOMR global object
				e.detail.BOOMR.init({
					//set beacon to project's BoomController
					beacon_url : "/ko-kr/Boom/boomerangLog/0",
					beacon_type : "POST"
				});
			}
		});
	}
</script>
<!-- Content from Master Layout -->


<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/images/logo/j6.jpg">
<link rel="icon" href="/Content/img/icons/Agoda/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="/Content/img/icons/Agoda/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/Content/img/icons/Agoda/apple-touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/Content/img/icons/Agoda/apple-touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/Content/img/icons/Agoda/apple-touch-icon-ipad-retina.png">

<!-- End Content from Master Layout -->

<link
	href="//cdn5.agoda.net/ycs/Assets/Content/ycsold-4.0.4.af8c6482.min.css"
	rel="stylesheet" type="text/css">
<link href="//cdn5.agoda.net/ycs/Content/regis/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="//cdn5.agoda.net/ycs/Assets/Content/regis/jumbotron.3c342cba.min.css"
	rel="stylesheet" type="text/css">
<link href="//cdn5.agoda.net/ycs/Content/regis/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="//cdn5.agoda.net/ycs/Assets/Content/ycs_flags_sprite.13a4b177.min.css"
	rel="stylesheet" type="text/css">
<link href="//cdn5.agoda.net/ycs/Content/regis/select2.min.css"
	rel="stylesheet" type="text/css">
<!--[if lte IE 9]> No longer support
        <link rel='stylesheet' type='text/css' href='/Content/regis/jumbotron-ie.min.css'>
    <![endif]-->
<!--[if IE 8]>
        <style type="text/css">
            body {
                padding-top: 0px;
            }
        </style>
    <![endif]-->

<style type="text/css">
.paddingTopZero {
	padding-top: 0px !important;
}

button.ui-datepicker-close {
	display: none;
}

.modal-title {
	color: black;
	text-shadow: none;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(enabled = false)";
	filter: none;
}

.ui-autocomplete {
	z-index: 999;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
}

.loginContinue {
	color: #F0AD4E;
	font-size: 1.0em;
}

input:invalid, textarea:invalid {
	outline-color: red;
	outline-width: thin;
}

.select2-container .select2-choice>.select2-chosen {
	font-size: 14px;
}

.select2-container .select2-choice {
	padding: 3px 0px 0px 8px;
	height: 35px !important;
}

.select2-container .select2-choice .select2-arrow b {
	background: url(//cdn5.agoda.net/ycs/Content/img/select2.png) no-repeat
		scroll 0px 4px transparent;
}

.contact-us {
	font-style: normal;
	font-weight: bold;
	line-height: 18px;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 50px;
	width: 100%;
	color: #3A74D1;
}

.contact-us a {
	font-size: 14px !important;
}
</style>



<link type="text/css" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
<link href="http://fonts.googleapis.com/css?family=Lato:400,700"
	rel="stylesheet" type="text/css">

<!--[if lte IE 9]>
        <link href='/Content/regis/jumbotron-ie.css' rel="stylesheet" type="text/css">
    <![endif]-->
<link rel="stylesheet" type="text/css"
	href="//cdn5.agoda.net/ycs/Content/regis/star-rating.min.css">
<link rel="stylesheet" type="text/css"
	href="//cdn5.agoda.net/ycs/Content/regis/jumbotron.css">
<link rel="stylesheet" type="text/css"
	href="//cdn5.agoda.net/ycs/Content/tipsy.css">

<!--[if IE 8]>
        <style type="text/css">
            body {
                padding-top: 0px;
            }

            #map-container{
                width:100% !important;
            }
        </style>
    <![endif]-->

<style>
.select-option-check-button {
	padding: 13px;
	background: #F8F8F8;
	border: 1px solid #EFEFEF;
	margin-bottom: 3px !important;
}

.select-option-panel {
	border: none !important;
}

.select-option-panel>.panel-heading {
	background: none !important;
}

.select-button-option>label {
	padding: 8px !important;
	background: #F8F8F8 !important;
	border: 1px solid #EFEFEF !important;
	margin-bottom: 3px !important;
}

.select-button-option .active {
	color: #ffffff !important;
	background: #428BCA !important;
	border: 1px solid #3073AF;
}

.tt-query, .tt-hint {
	width: 396px;
	height: 30px;
	padding: 8px 12px;
	font-size: 24px;
	line-height: 30px;
	border: 2px solid #ccc;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
	outline: none;
}

.typeahead {
	background-color: #fff;
}

.typeahead:focus {
	border: 2px solid #0097cf;
}

.tt-query {
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

.tt-hint {
	color: #999;
}

.tt-dropdown-menu {
	max-height: 150px;
	overflow-y: auto;
	width: 100%;
	margin-top: 12px;
	padding: 8px 0;
	background-color: #fff;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, 0.2);
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
	-webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
}

.tt-suggestion {
	padding: 3px 20px;
	font-size: 18px;
	line-height: 24px;
}

.tt-suggestion.tt-cursor {
	color: #fff;
	background-color: #0097cf;
}

.tt-suggestion p {
	margin: 0;
}

.gist {
	font-size: 14px;
}
</style>

<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/common.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/util.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/geocoder.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/map.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/controls.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/places_impl.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/onion.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/usage.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/44/14/marker.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps/api/js/StatsService.RecordStats?1m3&amp;1sut%7Cclient%3Agme-booking&amp;2smapview&amp;5v1&amp;1m3&amp;1sut%7Cclient%3Agme-booking%7Cchannel%3Aagoda&amp;2smapview&amp;5v1&amp;1m5&amp;1sut%7Cclient%3Agme-booking&amp;2schannel&amp;6m2&amp;1sagoda&amp;2v1&amp;callback=_xdc_._996x&amp;client=gme-booking&amp;channel=agoda&amp;token=79017"></script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h3 class="main-header text-center">간단한 2단계 절차로 아고다에 숙소 등록하기</h3>
		</div>
	</div>
	<div class="panel-heading">
		<div class="row-centered">
			<p
				class="col-lg-4 col-md-4 col-sm-6 col-xs-11 col-centered step-text">
				<span
					class="step-number step-number-active col-lg-2 col-md-2 col-sm-1 col-xs-1">1</span>1단계:
				기본 정보 작성
			</p>
			<p
				class="col-lg-4 col-md-4 col-sm-6 col-xs-11 col-centered step-text">
				<span
					class="step-number step-number-active col-lg-2 col-md-2 col-sm-1 col-xs-1">2</span>2단계:
				등록 절차 완료
			</p>
		</div>
	</div>
	<form class="form-horizontal" role="form" id="CompleteRegisForm">
		<div class="panel-body">
			<div class="form-group"></div>

			<div id="divPropertyNameForNonNHA">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label"
						title="실제 숙소의 영문명입니다. 다음 형식을 따라주십시오. - 이름에 반드시 Hotel, Gasthof, Appartamento, Albergo, Villa, Casa, Residence 등 숙소 유형을 포함해야 합니다. (예) My America Hotel, Appartamento Roma, SR guesthouse 등) -  특수문자는 사용할 수 없습니다.">숙소명
						(영어): </label>
					<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
						<div class="required-field-block">
							<input type="text" required=""
								class="form-control ga_Property pac-target-input"
								id="txtHotelName" placeholder="예) My Hotel" autocomplete="off">
							<div class="required-icon">
								<div class="text">*</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="dropdown-group">
				<div class="form-group">

					<label for="inputState" class="col-sm-3 control-label"
						title="숙박업소가 있는 '도'입니다.">도/주: </label>
					<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
						<div class="required-field-block">
							<select id="ddlState" class="form-control ga_Country" required=""
								placeholder="도를 선택하세요">
								<option value="0">도를 선택하세요</option>
							</select>

							<div class="required-icon">
								<div class="text">*</div>
							</div>
						</div>
						<div class="required-field-block" id="divFreeTextStateInput"
							style="margin: 15px 0 0 0; display: none;">
							<input type="text" id="txtStateInput"
								class="form-control form-control ga_State" placeholder="도">
							<div class="required-icon">
								<div class="text">*</div>
							</div>
						</div>
					</div>
				</div>
				<div id="county-form-group" class="form-group hidden">
					<label for="inputCounty" class="col-sm-3 control-label"
						title="County - Tooltip">County: </label>
					<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
						<div class="required-field-block">
							<input type="text" required=""
								class="form-control form-control ga_County hidden"
								id="txtCountyInput" placeholder="County" disabled="disabled">
							<select id="ddlCounty" class="form-control ga_County" required=""
								placeholder="County">
								<option value="0">Select County</option>
							</select>

						</div>
					</div>
				</div>
			</div>


			<input type="hidden" id="sessionProfileCurrentLanguageId" value="9">
			<input type="hidden" class="form-control form-control"
				id="txtCountry" selectedcountryid="0"> <input type="hidden"
				class="form-control form-control" id="txtState" selectedstateid="0">
			<input type="hidden" class="form-control form-control" id="txtCity"
				selectedcityid="0"> <input type="hidden"
				class="form-control form-control" id="txtArea" selectedareaid="0">
			<input type="hidden" id="mapProvider" value="Google">

			<div id="seeMapAlert" class="alert alert-warning col-md-12"
				role="alert" style="background-image: none; display: none;">
				지도 보기를 원할 경우 <a class="ga_see_map" href="#">여기</a>를 클릭해 주세요.
			</div>
			<div class="form-group">
				<label for="inputStreetAddress" class="col-sm-3 control-label"
					title="주소를 입력해 주세요.">주소: </label>

				<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
					<div class="required-field-block">

						<input type="text" class="form-control ga_Address"
							id="txtStreeAddress" required=""
							placeholder="예) 000-00, Jongro, Seoul (영문입력)">
						<div class="required-icon">
							<div class="text">*</div>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label"
					title="연락 받을 수 있는 전화번호를 입력해 주세요. 입력 시 다음 사항을 반드시 확인해 주세요. - 반드시 연락처 앞에 국가번호 '88'을 입력합니다. 예) 88 2 123 5678 - 특수문자 (예) +, -, @, (…), ‘, &amp;))는 사용할 수 없으면 숫자만 입력하시기 바랍니다.">전화번호:
				</label>
				<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
					<div class="required-field-block">
						<select id="ddlPhonePrefix" class="form-control ga_PhonePrefix"
							required="" placeholder="국가 번호를 선택해 주세요">
							<option value="KR" callingcode="82">대한민국(+82)</option>
							<option value="198">말레이시아</option>
							<option value="181">미국</option>
							<option value="114">싱가포르</option>
							<option value="107">영국</option>
							<option value="192">인도네시아</option>
							<option value="3">일본</option>
							<option value="191">중국</option>
							<option value="106">태국</option>
							<option value="139">호주</option>
						</select>
						<div class="required-icon">
							<div class="text">*</div>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label"> </label>
				<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
					<div class="required-field-block">
						<input type="text" class="form-control form-control ga_MainPhone"
							id="txtHotelMainPhone" placeholder="입력 예시) 123456789" required=""
							pattern="\d*" maxlength="16">
						<div class="required-icon">
							<div class="text">*</div>
						</div>
					</div>
				</div>
			</div>

			<input type="hidden" id="hdLatitude" value="-181"> <input
				type="hidden" id="hdLongtitude" value="-181">

			<div id="map-outer" class="col-md-12" style="padding-bottom: 10px;">
				<p class="col-md-12">
					<strong>숙소 소재지</strong><br> 지도를 확대하고 클릭해 숙소 위치를 선택하세요.
				</p>

				<script src="//cdn5.agoda.net/ycs/Scripts/MapControl/MapControl.js"></script>
				<script
					src="//cdn5.agoda.net/ycs/Scripts/MapControl/MapControlBaidu.js"></script>
				<script
					src="//cdn5.agoda.net/ycs/Scripts/MapControl/MapControlGoogle.js"></script>
				<script type="text/javascript"
					src="https://api.map.baidu.com/api?v=2.0&amp;ak=5kkkAniwf0VgKl5WNi7C5pOq&amp;s=1"></script>
				<script type="text/javascript"
					src="https://api.map.baidu.com/getscript?v=2.0&amp;ak=5kkkAniwf0VgKl5WNi7C5pOq&amp;services=&amp;t=20210225162129"></script>
				<script type="text/javascript"
					src="//maps.googleapis.com/maps/api/js?client=gme-booking&amp;channel=agoda&amp;v=3.20&amp;sensor=false&amp;language=en&amp;async=2&amp;libraries=places"></script>
				<style>
.tangram-suggestion-main {
	z-index: 999;
}
</style>


				<div style="height: 100%; width: 100%;">
					<div id="mapcontainer0" class="col-md-12"
						style="padding-bottom: 10px; width: 546px; height: 410px; position: relative; overflow: hidden;">
						<div
							style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
							<div class="gm-style"
								style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
								<div tabindex="0" aria-label="Map" aria-roledescription="map"
									role="group"
									style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;">
									<div
										style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
										<div
											style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 0;">
												<div
													style="position: absolute; z-index: 995; transform: matrix(1, 0, 0, 1, -238, -196);">
													<div
														style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
													<div
														style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;">
														<div style="width: 256px; height: 256px;"></div>
													</div>
												</div>
											</div>
										</div>
										<div
											style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
										<div
											style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
										<div
											style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: -1;">
												<div
													style="position: absolute; z-index: 995; transform: matrix(1, 0, 0, 1, -238, -196);">
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 0px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 0px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: -256px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: -256px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: -256px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 0px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 256px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 256px;"></div>
													<div
														style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 256px;"></div>
												</div>
											</div>
										</div>
										<div
											style="position: absolute; left: 0px; top: 0px; z-index: 0;">
											<div
												style="position: absolute; z-index: 995; transform: matrix(1, 0, 0, 1, -238, -196);">
												<div
													style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i24!3i14!4i256!2m3!1e0!2sm!3i565291164!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=129652"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i23!3i14!4i256!2m3!1e0!2sm!3i565291201!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=114084"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i23!3i13!4i256!2m3!1e0!2sm!3i565291201!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=127994"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i25!3i13!4i256!2m3!1e0!2sm!3i565291176!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=24652"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i24!3i13!4i256!2m3!1e0!2sm!3i565291164!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=12491"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i25!3i14!4i256!2m3!1e0!2sm!3i565291176!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=10742"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i25!3i15!4i256!2m3!1e0!2sm!3i565291152!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=113300"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i23!3i15!4i256!2m3!1e0!2sm!3i565291201!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=100174"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
												<div
													style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
													<img draggable="false" alt="" role="presentation"
														src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i5!2i24!3i15!4i256!2m3!1e0!2sm!3i565291152!3m17!2sen!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy50OjMzfHMuZTpsfHAudjpvZmY!4e0&amp;client=gme-booking&amp;channel=agoda&amp;token=42905"
														style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
											</div>
										</div>
									</div>
									<div class="gm-style-pbc"
										style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
										<p class="gm-style-pbt"></p>
									</div>
									<div
										style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
										<div
											style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
										</div>
									</div>
								</div>
								<iframe aria-hidden="true" frameborder="0" tabindex="-1"
									style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"></iframe>
								<div
									style="pointer-events: none; width: 100%; height: 100%; box-sizing: border-box; position: absolute; z-index: 1000002; opacity: 0; border: 2px solid rgb(26, 115, 232);"></div>
								<div>
									<div class="gmnoprint"
										style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 0px; top: 0px;">
										<div class="gm-style-mtc"
											style="float: left; position: relative;">
											<button draggable="false" title="Show street map"
												aria-label="Show street map" type="button"
												aria-pressed="true"
												style="background: none padding-box rgb(255, 255, 255); display: table-cell; border: 0px; margin: 0px; padding: 0px 17px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; direction: ltr; overflow: hidden; text-align: center; height: 40px; vertical-align: middle; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; font-size: 18px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 35px; font-weight: 500;"
												id="115EF04E-9785-4001-8F6F-E599B5B42A5E"
												aria-expanded="false">Map</button>
											<ul role="menu"
												aria-labelledby="115EF04E-9785-4001-8F6F-E599B5B42A5E"
												style="background-color: white; list-style: none; padding: 2px; margin: 0px; z-index: -1; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; left: 0px; top: 40px; text-align: left; display: none;">
												<li tabindex="-1" role="menuitemcheckbox"
													aria-label="Show street map with terrain" draggable="false"
													title="Show street map with terrain" aria-checked="false"
													style="color: black; font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 18px; background-color: rgb(255, 255, 255); padding: 5px 8px 5px 5px; direction: ltr; text-align: left; white-space: nowrap;"><span><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22/%3E%3Cpath%20d%3D%22M19%203H5c-1.11%200-2%20.9-2%202v14c0%201.1.89%202%202%202h14c1.11%200%202-.9%202-2V5c0-1.1-.89-2-2-2zm-9%2014l-5-5%201.41-1.41L10%2014.17l7.59-7.59L19%208l-9%209z%22/%3E%3C/svg%3E"
														alt=""
														style="height: 1em; width: 1em; transform: translateY(0.15em); display: none;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M19%205v14H5V5h14m0-2H5c-1.1%200-2%20.9-2%202v14c0%201.1.9%202%202%202h14c1.1%200%202-.9%202-2V5c0-1.1-.9-2-2-2z%22/%3E%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22/%3E%3C/svg%3E"
														alt=""
														style="height: 1em; width: 1em; transform: translateY(0.15em);"></span><label
													style="cursor: inherit;">Terrain</label></li>
											</ul>
										</div>
										<div class="gm-style-mtc"
											style="float: left; position: relative;">
											<button draggable="false" title="Show satellite imagery"
												aria-label="Show satellite imagery" type="button"
												aria-pressed="false"
												style="background: none padding-box rgb(255, 255, 255); display: table-cell; border: 0px; margin: 0px; padding: 0px 17px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; direction: ltr; overflow: hidden; text-align: center; height: 40px; vertical-align: middle; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; font-size: 18px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 64px;"
												id="559874B2-0292-423D-8742-753D2C916555"
												aria-expanded="false">Satellite</button>
											<ul role="menu"
												aria-labelledby="559874B2-0292-423D-8742-753D2C916555"
												style="background-color: white; list-style: none; padding: 2px; margin: 0px; z-index: -1; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; right: 0px; top: 40px; text-align: left; display: none;">
												<li tabindex="-1" role="menuitemcheckbox"
													aria-label="Show imagery with street names"
													draggable="false" title="Show imagery with street names"
													aria-checked="true"
													style="color: black; font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 18px; background-color: rgb(255, 255, 255); padding: 5px 8px 5px 5px; direction: ltr; text-align: left; white-space: nowrap;"><span><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22/%3E%3Cpath%20d%3D%22M19%203H5c-1.11%200-2%20.9-2%202v14c0%201.1.89%202%202%202h14c1.11%200%202-.9%202-2V5c0-1.1-.89-2-2-2zm-9%2014l-5-5%201.41-1.41L10%2014.17l7.59-7.59L19%208l-9%209z%22/%3E%3C/svg%3E"
														alt=""
														style="height: 1em; width: 1em; transform: translateY(0.15em);"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M19%205v14H5V5h14m0-2H5c-1.1%200-2%20.9-2%202v14c0%201.1.9%202%202%202h14c1.1%200%202-.9%202-2V5c0-1.1-.9-2-2-2z%22/%3E%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22/%3E%3C/svg%3E"
														alt=""
														style="height: 1em; width: 1em; transform: translateY(0.15em); display: none;"></span><label
													style="cursor: inherit;">Labels</label></li>
											</ul>
										</div>
									</div>
								</div>
								<div></div>
								<div></div>
								<div></div>
								<div>
									<button draggable="false" title="Toggle fullscreen view"
										aria-label="Toggle fullscreen view" type="button"
										class="gm-control-active gm-fullscreen-control"
										style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; text-transform: none; appearance: none; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;">
										<img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%200v6h2V2h4V0H0zm16%200h-4v2h4v4h2V0h-2zm0%2016h-4v2h6v-6h-2v4zM2%2012H0v6h6v-2H2v-4z%22/%3E%3C/svg%3E"
											alt="" style="height: 18px; width: 18px;"><img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%200v6h2V2h4V0H0zm16%200h-4v2h4v4h2V0h-2zm0%2016h-4v2h6v-6h-2v4zM2%2012H0v6h6v-2H2v-4z%22/%3E%3C/svg%3E"
											alt="" style="height: 18px; width: 18px;"><img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%200v6h2V2h4V0H0zm16%200h-4v2h4v4h2V0h-2zm0%2016h-4v2h6v-6h-2v4zM2%2012H0v6h6v-2H2v-4z%22/%3E%3C/svg%3E"
											alt="" style="height: 18px; width: 18px;">
									</button>
								</div>
								<div></div>
								<div></div>
								<div></div>
								<div></div>
								<div>
									<div
										class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
										draggable="false" controlwidth="40" controlheight="153"
										style="margin: 10px; user-select: none; position: absolute; bottom: 167px; right: 40px;">
										<div class="gmnoprint" controlwidth="40" controlheight="40"
											style="display: none; position: absolute;">
											<div
												style="background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; width: 40px; height: 40px;">
												<button draggable="false" title="Rotate map clockwise"
													aria-label="Rotate map clockwise" type="button"
													class="gm-control-active"
													style="background: none; display: none; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; left: 0px; top: 0px; overflow: hidden; width: 40px; height: 40px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h24v24H0V0z%22/%3E%3Cpath%20fill%3D%22%23666%22%20d%3D%22M12.06%209.06l4-4-4-4-1.41%201.41%201.59%201.59h-.18c-2.3%200-4.6.88-6.35%202.64-3.52%203.51-3.52%209.21%200%2012.72%201.5%201.5%203.4%202.36%205.36%202.58v-2.02c-1.44-.21-2.84-.86-3.95-1.97-2.73-2.73-2.73-7.17%200-9.9%201.37-1.37%203.16-2.05%204.95-2.05h.17l-1.59%201.59%201.41%201.41zm8.94%203c-.19-1.74-.88-3.32-1.91-4.61l-1.43%201.43c.69.92%201.15%202%201.32%203.18H21zm-7.94%207.92V22c1.74-.19%203.32-.88%204.61-1.91l-1.43-1.43c-.91.68-2%201.15-3.18%201.32zm4.6-2.74l1.43%201.43c1.04-1.29%201.72-2.88%201.91-4.61h-2.02c-.17%201.18-.64%202.27-1.32%203.18z%22/%3E%3C/svg%3E"
														style="width: 20px; height: 20px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h24v24H0V0z%22/%3E%3Cpath%20fill%3D%22%23333%22%20d%3D%22M12.06%209.06l4-4-4-4-1.41%201.41%201.59%201.59h-.18c-2.3%200-4.6.88-6.35%202.64-3.52%203.51-3.52%209.21%200%2012.72%201.5%201.5%203.4%202.36%205.36%202.58v-2.02c-1.44-.21-2.84-.86-3.95-1.97-2.73-2.73-2.73-7.17%200-9.9%201.37-1.37%203.16-2.05%204.95-2.05h.17l-1.59%201.59%201.41%201.41zm8.94%203c-.19-1.74-.88-3.32-1.91-4.61l-1.43%201.43c.69.92%201.15%202%201.32%203.18H21zm-7.94%207.92V22c1.74-.19%203.32-.88%204.61-1.91l-1.43-1.43c-.91.68-2%201.15-3.18%201.32zm4.6-2.74l1.43%201.43c1.04-1.29%201.72-2.88%201.91-4.61h-2.02c-.17%201.18-.64%202.27-1.32%203.18z%22/%3E%3C/svg%3E"
														style="width: 20px; height: 20px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h24v24H0V0z%22/%3E%3Cpath%20fill%3D%22%23111%22%20d%3D%22M12.06%209.06l4-4-4-4-1.41%201.41%201.59%201.59h-.18c-2.3%200-4.6.88-6.35%202.64-3.52%203.51-3.52%209.21%200%2012.72%201.5%201.5%203.4%202.36%205.36%202.58v-2.02c-1.44-.21-2.84-.86-3.95-1.97-2.73-2.73-2.73-7.17%200-9.9%201.37-1.37%203.16-2.05%204.95-2.05h.17l-1.59%201.59%201.41%201.41zm8.94%203c-.19-1.74-.88-3.32-1.91-4.61l-1.43%201.43c.69.92%201.15%202%201.32%203.18H21zm-7.94%207.92V22c1.74-.19%203.32-.88%204.61-1.91l-1.43-1.43c-.91.68-2%201.15-3.18%201.32zm4.6-2.74l1.43%201.43c1.04-1.29%201.72-2.88%201.91-4.61h-2.02c-.17%201.18-.64%202.27-1.32%203.18z%22/%3E%3C/svg%3E"
														style="width: 20px; height: 20px;">
												</button>
												<div
													style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); display: none;"></div>
												<button draggable="false"
													title="Rotate map counterclockwise"
													aria-label="Rotate map counterclockwise" type="button"
													class="gm-control-active"
													style="background: none; display: none; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; left: 0px; top: 0px; overflow: hidden; width: 40px; height: 40px; transform: scaleX(-1);">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h24v24H0V0z%22/%3E%3Cpath%20fill%3D%22%23666%22%20d%3D%22M12.06%209.06l4-4-4-4-1.41%201.41%201.59%201.59h-.18c-2.3%200-4.6.88-6.35%202.64-3.52%203.51-3.52%209.21%200%2012.72%201.5%201.5%203.4%202.36%205.36%202.58v-2.02c-1.44-.21-2.84-.86-3.95-1.97-2.73-2.73-2.73-7.17%200-9.9%201.37-1.37%203.16-2.05%204.95-2.05h.17l-1.59%201.59%201.41%201.41zm8.94%203c-.19-1.74-.88-3.32-1.91-4.61l-1.43%201.43c.69.92%201.15%202%201.32%203.18H21zm-7.94%207.92V22c1.74-.19%203.32-.88%204.61-1.91l-1.43-1.43c-.91.68-2%201.15-3.18%201.32zm4.6-2.74l1.43%201.43c1.04-1.29%201.72-2.88%201.91-4.61h-2.02c-.17%201.18-.64%202.27-1.32%203.18z%22/%3E%3C/svg%3E"
														style="width: 20px; height: 20px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h24v24H0V0z%22/%3E%3Cpath%20fill%3D%22%23333%22%20d%3D%22M12.06%209.06l4-4-4-4-1.41%201.41%201.59%201.59h-.18c-2.3%200-4.6.88-6.35%202.64-3.52%203.51-3.52%209.21%200%2012.72%201.5%201.5%203.4%202.36%205.36%202.58v-2.02c-1.44-.21-2.84-.86-3.95-1.97-2.73-2.73-2.73-7.17%200-9.9%201.37-1.37%203.16-2.05%204.95-2.05h.17l-1.59%201.59%201.41%201.41zm8.94%203c-.19-1.74-.88-3.32-1.91-4.61l-1.43%201.43c.69.92%201.15%202%201.32%203.18H21zm-7.94%207.92V22c1.74-.19%203.32-.88%204.61-1.91l-1.43-1.43c-.91.68-2%201.15-3.18%201.32zm4.6-2.74l1.43%201.43c1.04-1.29%201.72-2.88%201.91-4.61h-2.02c-.17%201.18-.64%202.27-1.32%203.18z%22/%3E%3C/svg%3E"
														style="width: 20px; height: 20px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h24v24H0V0z%22/%3E%3Cpath%20fill%3D%22%23111%22%20d%3D%22M12.06%209.06l4-4-4-4-1.41%201.41%201.59%201.59h-.18c-2.3%200-4.6.88-6.35%202.64-3.52%203.51-3.52%209.21%200%2012.72%201.5%201.5%203.4%202.36%205.36%202.58v-2.02c-1.44-.21-2.84-.86-3.95-1.97-2.73-2.73-2.73-7.17%200-9.9%201.37-1.37%203.16-2.05%204.95-2.05h.17l-1.59%201.59%201.41%201.41zm8.94%203c-.19-1.74-.88-3.32-1.91-4.61l-1.43%201.43c.69.92%201.15%202%201.32%203.18H21zm-7.94%207.92V22c1.74-.19%203.32-.88%204.61-1.91l-1.43-1.43c-.91.68-2%201.15-3.18%201.32zm4.6-2.74l1.43%201.43c1.04-1.29%201.72-2.88%201.91-4.61h-2.02c-.17%201.18-.64%202.27-1.32%203.18z%22/%3E%3C/svg%3E"
														style="width: 20px; height: 20px;">
												</button>
												<div
													style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); display: none;"></div>
												<button draggable="false" title="Tilt map"
													aria-label="Tilt map" type="button"
													class="gm-tilt gm-control-active"
													style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; top: 0px; left: 0px; overflow: hidden; width: 40px; height: 40px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2016%22%3E%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2016h8V9H0v7zm10%200h8V9h-8v7zM0%207h8V0H0v7zm10-7v7h8V0h-8z%22/%3E%3C/svg%3E"
														style="width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2016%22%3E%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2016h8V9H0v7zm10%200h8V9h-8v7zM0%207h8V0H0v7zm10-7v7h8V0h-8z%22/%3E%3C/svg%3E"
														style="width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2016%22%3E%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2016h8V9H0v7zm10%200h8V9h-8v7zM0%207h8V0H0v7zm10-7v7h8V0h-8z%22/%3E%3C/svg%3E"
														style="width: 18px;">
												</button>
											</div>
										</div>
										<div class="gm-svpc" dir="ltr"
											title="Drag Pegman onto the map to open Street View"
											controlwidth="40" controlheight="40"
											style="background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; width: 40px; height: 40px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: none; position: absolute; left: 0px; top: 0px;">
											<div style="position: absolute; left: 50%; top: 50%;"></div>
											<div style="position: absolute; left: 50%; top: 50%;">
												<img
													src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2023%2038%22%3E%3Cpath%20d%3D%22M16.6%2038.1h-5.5l-.2-2.9-.2%202.9h-5.5L5%2025.3l-.8%202a1.53%201.53%200%2001-1.9.9l-1.2-.4a1.58%201.58%200%2001-1-1.9v-.1c.3-.9%203.1-11.2%203.1-11.2a2.66%202.66%200%20012.3-2l.6-.5a6.93%206.93%200%20014.7-12%206.8%206.8%200%20014.9%202%207%207%200%20012%204.9%206.65%206.65%200%2001-2.2%205l.7.5a2.78%202.78%200%20012.4%202s2.9%2011.2%202.9%2011.3a1.53%201.53%200%2001-.9%201.9l-1.3.4a1.63%201.63%200%2001-1.9-.9l-.7-1.8-.1%2012.7zm-3.6-2h1.7L14.9%2020.3l1.9-.3%202.4%206.3.3-.1c-.2-.8-.8-3.2-2.8-10.9a.63.63%200%2000-.6-.5h-.6l-1.1-.9h-1.9l-.3-2a4.83%204.83%200%20003.5-4.7A4.78%204.78%200%200011%202.3H10.8a4.9%204.9%200%2000-1.4%209.6l-.3%202h-1.9l-1%20.9h-.6a.74.74%200%2000-.6.5c-2%207.5-2.7%2010-3%2010.9l.3.1L4.8%2020l1.9.3.2%2015.8h1.6l.6-8.4a1.52%201.52%200%20011.5-1.4%201.5%201.5%200%20011.5%201.4l.9%208.4zm-10.9-9.6zm17.5-.1z%22%20style%3D%22isolation%3Aisolate%22%20fill%3D%22%23333%22%20opacity%3D%22.7%22/%3E%3Cpath%20d%3D%22M5.9%2013.6l1.1-.9h7.8l1.2.9%22%20fill%3D%22%23ce592c%22/%3E%3Cellipse%20cx%3D%2210.9%22%20cy%3D%2213.1%22%20rx%3D%222.7%22%20ry%3D%22.3%22%20style%3D%22isolation%3Aisolate%22%20fill%3D%22%23ce592c%22%20opacity%3D%22.5%22/%3E%3Cpath%20d%3D%22M20.6%2026.1l-2.9-11.3a1.71%201.71%200%2000-1.6-1.2H5.699999999999999a1.69%201.69%200%2000-1.5%201.3l-3.1%2011.3a.61.61%200%2000.3.7l1.1.4a.61.61%200%2000.7-.3l2.7-6.7.2%2016.8h3.6l.6-9.3a.47.47%200%2001.44-.5h.06c.4%200%20.4.2.5.5l.6%209.3h3.6L15.7%2020.3l2.5%206.6a.52.52%200%2000.66.31l1.2-.4a.57.57%200%2000.5-.7z%22%20fill%3D%22%23fdbf2d%22/%3E%3Cpath%20d%3D%22M7%2013.6l3.9%206.7%203.9-6.7%22%20style%3D%22isolation%3Aisolate%22%20fill%3D%22%23cf572e%22%20opacity%3D%22.6%22/%3E%3Ccircle%20cx%3D%2210.9%22%20cy%3D%227%22%20r%3D%225.9%22%20fill%3D%22%23fdbf2d%22/%3E%3C/svg%3E"
													aria-label="Street View Pegman Control"
													style="height: 30px; width: 30px; position: absolute; transform: translate(-50%, -50%); pointer-events: none;"><img
													src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2038%22%3E%3Cpath%20d%3D%22M22%2026.6l-2.9-11.3a2.78%202.78%200%2000-2.4-2l-.7-.5a6.82%206.82%200%20002.2-5%206.9%206.9%200%2000-13.8%200%207%207%200%20002.2%205.1l-.6.5a2.55%202.55%200%2000-2.3%202s-3%2011.1-3%2011.2v.1a1.58%201.58%200%20001%201.9l1.2.4a1.63%201.63%200%20001.9-.9l.8-2%20.2%2012.8h11.3l.2-12.6.7%201.8a1.54%201.54%200%20001.5%201%201.09%201.09%200%2000.5-.1l1.3-.4a1.85%201.85%200%2000.7-2zm-1.2.9l-1.2.4a.61.61%200%2001-.7-.3l-2.5-6.6-.2%2016.8h-9.4L6.6%2021l-2.7%206.7a.52.52%200%2001-.66.31l-1.1-.4a.52.52%200%2001-.31-.66l3.1-11.3a1.69%201.69%200%20011.5-1.3h.2l1-.9h2.3a5.9%205.9%200%20113.2%200h2.3l1.1.9h.2a1.71%201.71%200%20011.6%201.2l2.9%2011.3a.84.84%200%2001-.4.7z%22%20fill%3D%22%23333%22%20fill-opacity%3D%22.2%22/%3E%26quot%3B%3C/svg%3E"
													aria-label="Pegman is on top of the Map"
													style="display: none; height: 30px; width: 30px; position: absolute; transform: translate(-50%, -50%); pointer-events: none;"><img
													src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2040%2050%22%3E%3Cpath%20d%3D%22M34-30.4l-2.9-11.3a2.78%202.78%200%2000-2.4-2l-.7-.5a6.82%206.82%200%20002.2-5%206.9%206.9%200%2000-13.8%200%207%207%200%20002.2%205.1l-.6.5a2.55%202.55%200%2000-2.3%202s-3%2011.1-3%2011.2v.1a1.58%201.58%200%20001%201.9l1.2.4a1.63%201.63%200%20001.9-.9l.8-2%20.2%2012.8h11.3l.2-12.6.7%201.8a1.54%201.54%200%20001.5%201%201.09%201.09%200%2000.5-.1l1.3-.4a1.85%201.85%200%2000.7-2zm-1.2.9l-1.2.4a.61.61%200%2001-.7-.3L28.4-36l-.2%2016.8h-9.4L18.6-36l-2.7%206.7a.52.52%200%2001-.66.31l-1.1-.4a.52.52%200%2001-.31-.66l3.1-11.3a1.69%201.69%200%20011.5-1.3h.2l1-.9h2.3a5.9%205.9%200%20113.2%200h2.3l1.1.9h.2a1.71%201.71%200%20011.6%201.2l2.9%2011.3a.84.84%200%2001-.4.7zM34%2029.6l-2.9-11.3a2.78%202.78%200%2000-2.4-2l-.7-.5a6.82%206.82%200%20002.2-5%206.9%206.9%200%2000-13.8%200%207%207%200%20002.2%205.1l-.6.5a2.55%202.55%200%2000-2.3%202s-3%2011.1-3%2011.2v.1a1.58%201.58%200%20001%201.9l1.2.4a1.63%201.63%200%20001.9-.9l.8-2%20.2%2012.8h11.3l.2-12.6.7%201.8a1.54%201.54%200%20001.5%201%201.09%201.09%200%2000.5-.1l1.3-.4a1.85%201.85%200%2000.7-2zm-1.2.9l-1.2.4a.61.61%200%2001-.7-.3L28.4%2024l-.2%2016.8h-9.4L18.6%2024l-2.7%206.7a.52.52%200%2001-.66.31l-1.1-.4a.52.52%200%2001-.31-.66l3.1-11.3a1.69%201.69%200%20011.5-1.3h.2l1-.9h2.3a5.9%205.9%200%20113.2%200h2.3l1.1.9h.2a1.71%201.71%200%20011.6%201.2l2.9%2011.3a.84.84%200%2001-.4.7z%22%20fill%3D%22%23333%22%20fill-opacity%3D%22.2%22/%3E%3Cpath%20d%3D%22M15.4%2038.8h-4a1.64%201.64%200%2001-1.4-1.1l-3.1-8a.9.9%200%2001-.5.1l-1.4.1a1.62%201.62%200%2001-1.6-1.4L2.3%2015.4l1.6-1.3a6.87%206.87%200%2001-3-4.6A7.14%207.14%200%20012%204a7.6%207.6%200%20014.7-3.1A7.14%207.14%200%200112.2%202a7.28%207.28%200%20012.3%209.6l2.1-.1.1%201c0%20.2.1.5.1.8a2.41%202.41%200%20011%201s1.9%203.2%202.8%204.9c.7%201.2%202.1%204.2%202.8%205.9a2.1%202.1%200%2001-.8%202.6l-.6.4a1.63%201.63%200%2001-1.5.2l-.6-.3a8.93%208.93%200%2000.5%201.3%207.91%207.91%200%20001.8%202.6l.6.3v4.6l-4.5-.1a7.32%207.32%200%2001-2.5-1.5l-.4%203.6zm-10-19.2l3.5%209.8%202.9%207.5h1.6V35l-1.9-9.4%203.1%205.4a8.24%208.24%200%20003.8%203.8h2.1v-1.4a14%2014%200%2001-2.2-3.1%2044.55%2044.55%200%2001-2.2-8l-1.3-6.3%203.2%205.6c.6%201.1%202.1%203.6%202.8%204.9l.6-.4c-.8-1.6-2.1-4.6-2.8-5.8-.9-1.7-2.8-4.9-2.8-4.9a.54.54%200%2000-.4-.3l-.7-.1-.1-.7a4.33%204.33%200%2000-.1-.5l-5.3.3%202.2-1.9a4.3%204.3%200%2000.9-1%205.17%205.17%200%2000.8-4%205.67%205.67%200%2000-2.2-3.4%205.09%205.09%200%2000-4-.8%205.67%205.67%200%2000-3.4%202.2%205.17%205.17%200%2000-.8%204%205.67%205.67%200%20002.2%203.4%203.13%203.13%200%20001%20.5l1.6.6-3.2%202.6%201%2011.5h.4l-.3-8.2z%22%20fill%3D%22%23333%22/%3E%3Cpath%20d%3D%22M3.35%2015.9l1.1%2012.5a.39.39%200%2000.36.42h.14l1.4-.1a.66.66%200%2000.5-.4l-.2-3.8-3.3-8.6z%22%20fill%3D%22%23fdbf2d%22/%3E%3Cpath%20d%3D%22M5.2%2028.8l1.1-.1a.66.66%200%2000.5-.4l-.2-3.8-1.2-3.1z%22%20fill%3D%22%23ce592b%22%20fill-opacity%3D%22.25%22/%3E%3Cpath%20d%3D%22M21.4%2035.7l-3.8-1.2-2.7-7.8L12%2015.5l3.4-2.9c.2%202.4%202.2%2014.1%203.7%2017.1%200%200%201.3%202.6%202.3%203.1v2.9m-8.4-8.1l-2-.3%202.5%2010.1.9.4v-2.9%22%20fill%3D%22%23e5892b%22/%3E%3Cpath%20d%3D%22M17.8%2025.4c-.4-1.5-.7-3.1-1.1-4.8-.1-.4-.1-.7-.2-1.1l-1.1-2-1.7-1.6s.9%205%202.4%207.1a19.12%2019.12%200%20001.7%202.4z%22%20style%3D%22isolation%3Aisolate%22%20fill%3D%22%23cf572e%22%20opacity%3D%22.6%22/%3E%3Cpath%20d%3D%22M14.4%2037.8h-3a.43.43%200%2001-.4-.4l-3-7.8-1.7-4.8-3-9%208.9-.4s2.9%2011.3%204.3%2014.4c1.9%204.1%203.1%204.7%205%205.8h-3.2s-4.1-1.2-5.9-7.7a.59.59%200%2000-.6-.4.62.62%200%2000-.3.7s.5%202.4.9%203.6a34.87%2034.87%200%20002%206z%22%20fill%3D%22%23fdbf2d%22/%3E%3Cpath%20d%3D%22M15.4%2012.7l-3.3%202.9-8.9.4%203.3-2.7%22%20fill%3D%22%23ce592b%22/%3E%3Cpath%20d%3D%22M9.1%2021.1l1.4-6.2-5.9.5%22%20style%3D%22isolation%3Aisolate%22%20fill%3D%22%23cf572e%22%20opacity%3D%22.6%22/%3E%3Cpath%20d%3D%22M12%2013.5a4.75%204.75%200%2001-2.6%201.1c-1.5.3-2.9.2-2.9%200s1.1-.6%202.7-1%22%20fill%3D%22%23bb3d19%22/%3E%3Ccircle%20cx%3D%227.92%22%20cy%3D%228.19%22%20r%3D%226.3%22%20fill%3D%22%23fdbf2d%22/%3E%3Cpath%20d%3D%22M4.7%2013.6a6.21%206.21%200%20008.4-1.9v-.1a8.89%208.89%200%2001-8.4%202z%22%20fill%3D%22%23ce592b%22%20fill-opacity%3D%22.25%22/%3E%3Cpath%20d%3D%22M21.2%2027.2l.6-.4a1.09%201.09%200%2000.4-1.3c-.7-1.5-2.1-4.6-2.8-5.8-.9-1.7-2.8-4.9-2.8-4.9a1.6%201.6%200%2000-2.17-.65l-.23.15a1.68%201.68%200%2000-.4%202.1s2.3%203.9%203.1%205.3c.6%201%202.1%203.7%202.9%205.1a.94.94%200%20001.24.49l.16-.09z%22%20fill%3D%22%23fdbf2d%22/%3E%3Cpath%20d%3D%22M19.4%2019.8c-.9-1.7-2.8-4.9-2.8-4.9a1.6%201.6%200%2000-2.17-.65l-.23.15-.3.3c1.1%201.5%202.9%203.8%203.9%205.4%201.1%201.8%202.9%205%203.8%206.7l.1-.1a1.09%201.09%200%2000.4-1.3%2057.67%2057.67%200%2000-2.7-5.6z%22%20fill%3D%22%23ce592b%22%20fill-opacity%3D%22.25%22/%3E%3C/svg%3E"
													aria-label="Street View Pegman Control"
													style="display: none; height: 40px; width: 40px; position: absolute; transform: translate(-60%, -45%); pointer-events: none;">
											</div>
										</div>
										<div class="gmnoprint" controlwidth="40" controlheight="81"
											style="position: absolute; left: 0px; top: 72px;">
											<div draggable="false"
												style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;">
												<button draggable="false" title="Zoom in"
													aria-label="Zoom in" type="button"
													class="gm-control-active"
													style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23666%22%20d%3D%22M18%207h-7V0H7v7H0v4h7v7h4v-7h7z%22/%3E%3C/svg%3E"
														alt="" style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23333%22%20d%3D%22M18%207h-7V0H7v7H0v4h7v7h4v-7h7z%22/%3E%3C/svg%3E"
														alt="" style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23111%22%20d%3D%22M18%207h-7V0H7v7H0v4h7v7h4v-7h7z%22/%3E%3C/svg%3E"
														alt="" style="height: 18px; width: 18px;">
												</button>
												<div
													style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;"></div>
												<button draggable="false" title="Zoom out"
													aria-label="Zoom out" type="button"
													class="gm-control-active"
													style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%207h18v4H0V7z%22/%3E%3C/svg%3E"
														alt="" style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%207h18v4H0V7z%22/%3E%3C/svg%3E"
														alt="" style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2018%2018%22%3E%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%207h18v4H0V7z%22/%3E%3C/svg%3E"
														alt="" style="height: 18px; width: 18px;">
												</button>
											</div>
										</div>
									</div>
								</div>
								<div>
									<div
										style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
										<a target="_blank" rel="noopener"
											href="https://maps.google.com/maps?ll=13.75,100.4667&amp;z=5&amp;t=m&amp;hl=en&amp;gl=US&amp;mapclient=apiv3"
											title="Open this area in Google Maps (opens a new window)"
											style="position: static; overflow: visible; float: none; display: inline;"><div
												style="width: 66px; height: 26px; cursor: pointer;">
												<img alt=""
													src="https://maps.gstatic.com/mapfiles/api-3/images/google4.png"
													draggable="false"
													style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
											</div></a>
									</div>
								</div>
								<div></div>
								<div>
									<div class="gmnoprint"
										style="z-index: 1000001; position: absolute; right: 71px; bottom: 0px; width: 176px;">
										<div draggable="false" class="gm-style-cc"
											style="user-select: none; height: 14px; line-height: 14px;">
											<div
												style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
												<div style="width: 1px;"></div>
												<div
													style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
											</div>
											<div
												style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(0, 0, 0); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
												<button draggable="false" title="Map Data"
													aria-label="Map Data" type="button"
													style="background: none; display: none; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: relative; cursor: pointer; user-select: none; color: rgb(0, 0, 0); font-family: inherit;">Map
													Data</button>
												<span>Map data ©2021 Google, SK telecom</span>
											</div>
										</div>
									</div>
									<div class="gmnoprint gm-style-cc" draggable="false"
										style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
										<div
											style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
											<div style="width: 1px;"></div>
											<div
												style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
										</div>
										<div
											style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(0, 0, 0); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
											<a
												href="https://www.google.com/intl/en_US/help/terms_maps.html"
												target="_blank" rel="noopener"
												style="text-decoration: none; cursor: pointer; color: rgb(0, 0, 0);">Terms
												of Use</a>
										</div>
									</div>
									<div draggable="false" class="gm-style-cc"
										style="user-select: none; height: 14px; line-height: 14px; display: none; position: absolute; right: 0px; bottom: 0px;">
										<div
											style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
											<div style="width: 1px;"></div>
											<div
												style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
										</div>
										<div
											style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(0, 0, 0); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
											<a target="_blank" rel="noopener"
												title="Report errors in the road map or imagery to Google"
												dir="ltr"
												href="https://www.google.com/maps/@13.75,100.4667,5z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
												style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(0, 0, 0); text-decoration: none; position: relative;">Report
												a map error</a>
										</div>
									</div>
									<div class="gmnoscreen"
										style="position: absolute; right: 0px; bottom: 0px;">
										<div
											style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(0, 0, 0); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Map
											data ©2021 Google, SK telecom</div>
									</div>
								</div>
								<div
									style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 123px; top: 115px;">
									<div
										style="padding: 0px 0px 10px; font-size: 16px; box-sizing: border-box;">Map
										Data</div>
									<div style="font-size: 13px;">Map data ©2021 Google, SK
										telecom</div>
									<button draggable="false" title="Close" aria-label="Close"
										type="button" class="gm-ui-hover-effect"
										style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; text-transform: none; appearance: none; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;">
										<img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22/%3E%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22/%3E%3C/svg%3E"
											alt=""
											style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;">
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>


				<script>
					initializeMapControl0 = function(locationUpdatedCallback,
							doInitializeAutoComplete,
							streetAddressUpdatedCallback) {
						var mapControl = new MapControl();
						var map = mapControl.openMap('0', 'Google',
								doInitializeAutoComplete ? 'txtHotelName'
										: null, locationUpdatedCallback,
								streetAddressUpdatedCallback);
						return map;
					}
				</script>
			</div>

			<!-- /map-outer -->
			<!-- Property Name Container -->
			<div id="divPropertyNameForNHA"></div>
			<!-- /Property Name Container-->


		</div>
		</div>
		</div>

		<div class="form-group">
			<label class="control-label col-lg-3 col-md-3 col-sm-3"
				title="숙소의 성급을 선택해 주세요. 성급(공식)을 선택한 경우 공식 기관에서 인증한 라이선스를 제시할 수 있어야 합니다. 성급(비공식)의 경우 숙소 자체내에서 정의한 숙소의 등급을 말합니다.">성급</label>
			<div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
				<div class="star-rating rating-xs rating-active">
					<div class="clear-rating clear-rating-active" title="Clear">
						<i class="glyphicon glyphicon-minus-sign"></i>
					</div>
					<div class="rating-container rating-gly-star" data-content="">
						<div class="rating-stars" data-content="" style="width: 0%;"></div>
						<input id="star-rating" value="0" type="number"
							class="rating ga_StarRating form-control" min="0" max="5"
							step="0.5" data-size="xs" style="display: none;">
					</div>
					<div class="caption">
						<span class="label label-default">Not Rated</span>
					</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="start-rating" class="col-sm-3 control-label"></label>
			<div
				class="col-sm-10 col-lg-4 col-md-8 col-sm-8 required-field-block">
				<div class="btn-group btn-group-justified offset-md"
					data-toggle="buttons">
					<label class="btn btn-default col-lg-3" id="officialRatingYES">
						<input type="radio" class="ga_StarOffical" name="options">성급
						(공식)
					</label> <label class="btn btn-default col-lg-3" id="officialRatingNO">
						<input type="radio" class="ga_StarOffical" name="options">성급
						(비공식)
					</label>

				</div>
				<div class="required-icon" style="margin-right: 15px;">
					<div class="text">*</div>
				</div>
			</div>
		</div>
		<div class="form-group NonNHAOnly">
			<label class="control-label col-lg-3 col-md-3 col-sm-3"
				title="숙소 담당자의 업무사항을 선택해 주세요.">담당자 직책:</label>
			<div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
				<div class="required-field-block">
					<button type="button"
						class="btn btn-default dropdown-toggle col-lg-12 col-md-12 col-sm-12 col-xs-12 ga_Role"
						data-toggle="modal" data-target="#role" id="roleButton">
						<span id="roleText">숙소에서 담당하고 있는 업무를 선택해 주세요.</span><span
							class="caret"></span>
						<div class="required-icon">
							<div class="text">*</div>
						</div>
					</button>
					<input id="roleTextValue" type="hidden"
						value="숙소에서 담당하고 있는 업무를 선택해 주세요."> <input id="roleValue"
						type="hidden" value="">
				</div>
			</div>
		</div>
		<!-- role model dialog -->
		<div id="role" class="modal fade" aria-hidden="true"
			style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content" style="margin-top: 60px;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">팝업창을
								닫습니다.</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">업무 목록</h4>
					</div>
					<div class="modal-body ativa-scroll"
						style="max-height: 438px; overflow-y: auto;">
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="1"
								value="1" name="E-Commerce"
								onclick="_registration.SelectRadioButton('role', this);">
								E-Commerce
							</label>
						</div>
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="7"
								value="7" name="Finance"
								onclick="_registration.SelectRadioButton('role', this);">
								Finance
							</label>
						</div>
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="2"
								value="2" name="Owner"
								onclick="_registration.SelectRadioButton('role', this);">
								Owner
							</label>
						</div>
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="6"
								value="6" name="Reservations"
								onclick="_registration.SelectRadioButton('role', this);">
								Reservations
							</label>
						</div>
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="3"
								value="3" name="Revenue"
								onclick="_registration.SelectRadioButton('role', this);">
								Revenue
							</label>
						</div>
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="4"
								value="4" name="Sales"
								onclick="_registration.SelectRadioButton('role', this);">
								Sales
							</label>
						</div>
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right" id="5"
								value="5" name="Other"
								onclick="_registration.SelectRadioButton('role', this);">
								Other
							</label>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="roleCloseBtn"
							data-dismiss="modal" onclick="_registration.CancelModal('role')">
							<span aria-hidden="true">취소</span>
						</button>
						<button type="button" class="btn btn-primary" id="roleApplyBtn"
							data-dismiss="modal" onclick="_registration.ApplyModal('role')"
							disabled="">
							<span aria-hidden="true">확인</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<hr>

		<!-- Hotel Chain -->
		<div class="form-group NonNHAOnly">
			<label for="hotelChain" class="col-sm-3 control-label"
				title="체인 호텔 여부를 선택해 주세요.">체인 호텔인가요?:</label>
			<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
				<div class="btn-group btn-group-justified offset-md"
					data-toggle="buttons">
					<label class="btn btn-default col-lg-3"
						onclick="_registration.IsHotelChain(true);" id="hotelChainYES">
						<input type="radio" class="ga_HC" name="options">예
					</label> <label class="btn btn-default active col-lg-3"
						onclick="_registration.IsHotelChain(false);" id="hotelChainNO">
						<input type="radio" class="ga_HC" name="options">아니오
					</label>
				</div>
			</div>
		</div>
		<!-- Hotel Chain Selection -->
		<div class="form-group" id="hotel-chain-group" style="display: none;">
			<label class="control-label col-lg-3 col-md-3 col-sm-3"
				for="hotelChainButton"></label>
			<div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
				<div class="required-field-block">
					<button type="button"
						class="btn btn-default dropdown-toggle col-lg-12 col-md-12 col-sm-12 col-xs-12"
						data-toggle="modal" data-target="#hotelChain"
						id="hotelChainButton" onclick="adjustModalView();">
						<span id="hotelChainText">체인을 선택해 주세요.</span> <span class="caret"></span>
						<div class="required-icon">
							<div class="text">*</div>
						</div>
					</button>
					<input id="hotelChainValue" type="hidden" value="">
				</div>
			</div>
		</div>
		<!-- Modal view hotel chain -->
		<div id="hotelChain" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content" style="margin-top: 60px;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">팝업창을
								닫습니다.</span>
						</button>
						<h4 class="modal-title" id="myHotelChainLabel">호텔 체인을 선택해
							주세요. (알파벳순)</h4>
					</div>
					<div class="modal-body ativa-scroll">
						<div class="radio select-option-check-button">
							<label> <input type="radio" class="pull-right"
								value="3212" name=" Bali Exception"
								onclick="_registration.SelectRadioButton('hotelChain', this);">
								Bali Exception
							</label>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default"
							id="closeCancellation" data-dismiss="modal"
							onclick="_registration.CancelModal('hotelBrand')">
							<span aria-hidden="true">취소</span>
						</button>
						<button type="button" class="btn btn-primary"
							id="applyCancellation" data-dismiss="modal"
							onclick="_registration.ApplyModal('hotelBrand')">
							<span aria-hidden="true">확인</span>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="form-group NonNHAOnly">
			<label for="inputEmail3" class="col-sm-3 control-label"
				title="국가에서 인증한 숙박업소의 사업자 등록 번호 또는 VAT/세금 번호를 입력해 주세요.">사업자
				등록번호: </label>
			<div class="col-sm-10 col-lg-4 col-md-8 col-sm-8">
				<div class="required-field-block">
					<input type="text" class="form-control form-control ga_License"
						id="txtVatNumber" placeholder="숙박업체의 사업자 등록 번호를 입력해 주세요.">
				</div>
			</div>
		</div>
		<hr>
		</div>
		<div class="panel-footer clearfix"
			style="visibility: inherit; height: inherit">
			<div class="">
				<div class=" col-lg-4 col-md-6 col-sm-6 col-xs-6">
					<button type="button"
						class="btn btn-default button_blue col-lg-12 col-md-12 col-sm-12 col-xs-12 pull-right ga_SecStepBack"
						onclick="_registration.GoBack();">이전</button>
				</div>
				<div class=" col-lg-4 col-md-6 col-sm-6 col-xs-6">
					<button id="btnSubmit" type="button"
						class="btn btn-success button_blue col-lg-12 col-md-12 col-sm-12 col-xs-12 pull-right ga_SecStepSubmit">제출하기</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>