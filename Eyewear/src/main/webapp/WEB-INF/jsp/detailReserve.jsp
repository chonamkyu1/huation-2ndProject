<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/theme.css">
<link rel="stylesheet" href="../css/pc_ver.css">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
</head>
<body>
	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>
	
	<div id="user-contents">
		<!-- Container-->
		<div class="width100">
			<div>
				<div class="center">
					<div class="text_center" style="background-image: url('https://breezm.com/img/reserve/select_jl.png'); background-size: 100% 100%; width:1440px; height:447px">
						<div class="font-size-24 weight400 align_center" style="color: white;">브리즘 잠실롯데월드점<br>특별한 경험을 위한 예약을 도와 드리겠습니다.</div>
					</div>
				</div>
				<section class="section-wrap section-reservation">
					<div class="center">
						<div class="min_width">
						
							<div class="card res_detail_box">
								<div class="flex_end mb-25">
									<div class="font-size-24 weight300">예약 종류</div>
								</div>
								<div class="divider"></div>
								<div class="my-150">
									<div class="between">
										<div class="detail_select_box">
											<div class="custom-control custom-radio custom-radio-auto">
												<input class="custom-control-input" id="type_custom" type="radio" name="typeRadio" checked="checked" onclick="clickReservePerson(event)">
												<label class="custom-control-label" for="type_custom">
													<span>안경 맞춤</span>
												</label>
											</div>
										</div>
										<div class="detail_select_box">
											<div class="custom-control custom-radio custom-radio-auto">
												<input class="custom-control-input" id="type_package" type="radio" name="typeRadio" onclick="clickReservePerson(event)">
												<label class="custom-control-label" for="type_package">
													<span>수령</span>
												</label>
											</div>
										</div>
										<div class="detail_select_box">
											<div class="custom-control custom-radio custom-radio-auto">
												<input class="custom-control-input" id="type_as" type="radio" name="typeRadio" onclick="clickReservePerson(event)">
												<label class="custom-control-label" for="type_as">
													<span>AS</span>
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="card res_detail_box">
								<div class="flex_end mb-25">
									<div class="font-size-24 weight300">상담 인원</div>
									<div class="select_subtitle">상담이 필요한 인원을 선택해 주세요. (동반 인원 제외)</div>
								</div>
								<div class="divider"></div>
								<div>
									<div class="my-150">
										<div class="between">
											<div class="detail_select_box">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="person_1" type="radio" name="personRadio" checked="checked" onclick="clickReservePerson(event)">
													<label class="custom-control-label" for="person_1">
														<span>01</span>
													</label>
												</div>
											</div>
											<div class="detail_select_box">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="person_2" type="radio" name="personRadio" onclick="clickReservePerson(event)">
													<label class="custom-control-label" for="person_2">
														<span>02</span>
													</label>
												</div>
											</div>
											<div class="detail_select_box" style="display: none">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="person_3" type="radio" name="personRadio" onclick="clickReservePerson(event)">
													<label class="custom-control-label" for="person_3">
														<span>03</span>
													</label>
												</div>
											</div>
											<div class="detail_select_box" style="display: none">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="person_4" type="radio" name="personRadio" onclick="clickReservePerson(event)">
													<label class="custom-control-label" for="person_4">
														<span>04</span>
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="card res_detail_box">
								<div class="flex_end mb-25">
									<div class="font-size-24 weight300">연령</div>
									<div class="select_subtitle">맞춤 상담 준비를 위해 고객님의 연령대를 알려주세요.</div>
								</div>
								<div class="divider"></div>
								<div class="my-100">
									<div class="font-size-14 weight300 breezm_color mb-25">2인 이상 방문 시, 가장 연장자의 연령대를 선택해 주세요</div>
									<div class="selection_dropselect">
										<div class="dropdown dropselect">
											<input type="hidden" name="age">
											<button class="age_drop_btn between" id="input_age" type="button" data-toggle="dropdown" aria-expanded="true" style="border-radius:0px!important;border-color:#000!important"><span class="dropdown-label">연령을 선택해주세요.</span>
												<svg class="bi bi-caret-down-fill" id="age-arrow" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
													<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
												</svg>
											</button>
											<div class="dropdown-menu" role="menu" aria-labelledby="option-post-cleanup" style="border-radius:0px!important;border-color:#000!important">
												<a class="dropdown-item dropselect-option" data-value="20" role="menuitem" tabindex="-1" data-selected="" href="" style="cursor: pointer;">20대 이하</a><a class="dropdown-item dropselect-option" data-value="30" role="menuitem" tabindex="-1" data-selected="" href="" style="cursor: pointer;">30대</a><a class="dropdown-item dropselect-option" data-value="40" role="menuitem" tabindex="-1" data-selected="" href="" style="cursor: pointer;">40대</a><a class="dropdown-item dropselect-option" data-value="50" role="menuitem" tabindex="-1" data-selected="" href="" style="cursor: pointer;">50대</a><a class="dropdown-item dropselect-option" data-value="60" role="menuitem" tabindex="-1" data-selected="" href="" style="cursor: pointer;">60대 이상</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="card res_detail_box">
								<div class="flex_end mb-25">
									<div class="font-size-24 weight300">날짜 &amp; 시간 선택</div>
								</div>
								<div class="divider"></div>
								<div class="my-150">
									<div class="pt-1 pt-md-2 pb-3 pb-md-6">
										<div class="mb-3 mb-md-6">
											<div class="table-calendar-yearmonth">
												<button id="prev_week" style="margin-right:12px" onclick="getPrevData()" disabled="disabled">&lt; &nbsp;</button><span id="cur_ym">2022.06</span>
												<button id="next_week" style="margin-left:12px" onclick="getNextData()">&gt; &nbsp;</button>
											</div>
											<table class="table-calendar text-center">
												<thead>
													<tr>
														<th scope="col">SUN</th>
														<th scope="col">MON</th>
														<th scope="col">TUE</th>
														<th scope="col">WED</th>
														<th scope="col">THU</th>
														<th scope="col">FRI</th>
														<th scope="col">SAT</th>
													</tr>
												</thead>
												<tbody id="reserve_date">
													<tr>
														<td></td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-06-27" type="radio" name="dateRadio" checked="checked" onclick="clickReserveDate('2022-06-27')">
																<label class="custom-control-label" for="date_2022-06-27">
																	<span>27</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-06-28" type="radio" name="dateRadio" onclick="clickReserveDate('2022-06-28')">
																<label class="custom-control-label" for="date_2022-06-28">
																	<span>28</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-06-29" type="radio" name="dateRadio" onclick="clickReserveDate('2022-06-29')">
																<label class="custom-control-label" for="date_2022-06-29">
																	<span>29</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-06-30" type="radio" name="dateRadio" onclick="clickReserveDate('2022-06-30')">
																<label class="custom-control-label" for="date_2022-06-30">
																	<span>30</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-01" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-01')">
																<label class="custom-control-label" for="date_2022-07-01">
																	<span>1</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-02" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-02')">
																<label class="custom-control-label" for="date_2022-07-02">
																	<span>2</span>
																</label>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-03" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-03')">
																<label class="custom-control-label" for="date_2022-07-03">
																	<span>3</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-04" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-04')">
																<label class="custom-control-label" for="date_2022-07-04">
																	<span>4</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-05" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-05')">
																<label class="custom-control-label" for="date_2022-07-05">
																	<span>5</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-06" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-06')">
																<label class="custom-control-label" for="date_2022-07-06">
																	<span>6</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-07" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-07')">
																<label class="custom-control-label" for="date_2022-07-07">
																	<span>7</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-08" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-08')">
																<label class="custom-control-label" for="date_2022-07-08">
																	<span>8</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-09" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-09')">
																<label class="custom-control-label" for="date_2022-07-09">
																	<span>9</span>
																</label>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-10" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-10')">
																<label class="custom-control-label" for="date_2022-07-10">
																	<span>10</span>
																</label>
															</div>
														</td>
														<td>
															<div class="custom-control custom-radio custom-radio-auto custom-date-radio">
																<input class="custom-control-input" id="date_2022-07-11" type="radio" name="dateRadio" onclick="clickReserveDate('2022-07-11')">
																<label class="custom-control-label" for="date_2022-07-11">
																	<span>11</span>
																</label>
															</div>
														</td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="divider my-100"></div>
									<div class="pt-1 pt-md-2 pb-3 pb-md-6">
										<div class="mb-3 mb-md-6">
											<div class="row" id="reserve_time">
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1100" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1100">
															<span>11:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1130" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1130">
															<span>11:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1200" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1200">
															<span>12:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1230" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1230">
															<span>12:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1300" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1300">
															<span>13:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1330" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1330">
															<span>13:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1400" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1400">
															<span>14:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1430" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1430">
															<span>14:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1500" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1500">
															<span>15:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1530" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1530">
															<span>15:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1600" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1600">
															<span>16:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1630" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1630">
															<span>16:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1700" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1700">
															<span>17:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1730" type="checkbox" name="timeRadio" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1730">
															<span>17:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1800" type="checkbox" name="timeRadio" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1800">
															<span>18:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1830" type="checkbox" name="timeRadio" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1830">
															<span>18:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1900" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1900">
															<span>19:00</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_1930" type="checkbox" name="timeRadio" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_1930">
															<span>19:30</span>
														</label>
													</div>
												</div>
												<div class="col-3 mb-2 mb-md-4">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="time_2000" type="checkbox" name="timeRadio" onclick="clickReserveTime(event)">
														<label class="custom-control-label" for="time_2000">
															<span>20:00</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="card res_detail_box">
								<div class="flex_end mb-25">
									<div class="font-size-24 weight300">오시는 길</div>
								</div>
								<div class="divider"></div>
									<div class="my-100">
										<div>
                          <div class="map-style" id="map" data-store="JL" data-mid="13558" style="position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/2205pfk/L4/986/464.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -100px; top: 461px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2205pfk/L4/986/465.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 156px; top: 461px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2205pfk/L4/986/466.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 412px; top: 461px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2205pfk/L4/986/467.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 668px; top: 461px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2205pfk/L4/986/468.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 924px; top: 461px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2205pfk/L4/987/464.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -100px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2205pfk/L4/987/465.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 156px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2205pfk/L4/987/466.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 412px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2205pfk/L4/987/467.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 668px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2205pfk/L4/987/468.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 924px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2205pfk/L4/988/464.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -100px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2205pfk/L4/988/465.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 156px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2205pfk/L4/988/466.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 412px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2205pfk/L4/988/467.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 668px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2205pfk/L4/988/468.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 924px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 960px; height: 500px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 4800px; height: 2500px; left: -1920px; top: -1000px;" viewBox="0 0 4800 2500"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -71px 0px 0px -28px; z-index: 0; left: 480px; top: 250px;"><img draggable="false" src="/img/breezm_marker.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 64px, 69px, 0px); top: 0px; left: 0px; width: 64px; height: 69px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">100m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
                          <div>
                            <div class="between my-50">
                              <div class="flex_end">
                                <div class="font-size-32 weight500">브리즘 잠실롯데월드점</div>
                                <div class="font-size-24 weight300 ml-30">아이스가든</div>
                              </div>
                              <div class="font-size-24 weight500"><a href="tel:02-411-0454"><strong>02-411-0454</strong></a></div>
                            </div>
                            <div class="between">
                              <div class="font-size-18 weight300">
                                <p>서울시 송파구 올림픽로 240 어드벤처동<br><strong>아이스가든</strong> 지하3층<br>잠실역 롯데월드 매표소 방향</p>
                              </div>
                              <div>
                                <div style="text-align: right">주차가능</div>
                                <div>최초 2시간 무료, 추가 10분 당 1,000원</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
							
						</div>
					</div>
				</section>

			</div>
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>	
	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>