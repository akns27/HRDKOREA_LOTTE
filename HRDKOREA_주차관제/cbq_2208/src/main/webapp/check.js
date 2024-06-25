/**
 * 
 */

function joinCheck(){
	if(frm.car_number2.value.length==0){
		alert("차량번호가 입력되지 않았습니다.");
		frm.car_number2.focus();
		return false;
	}
	if(frm.owner_name.value.length==0){
		alert("소유자 이름이 입력되지 않았습니다.");
		frm.owner_name.focus();
		return false;
	}
	if(frm.location.value.length==0){
		alert("주차위치가 선택되지 않았습니다.");
		frm.location.focus();
		return false;
	}
	if(frm.entrance_time.value.length==0){
		alert("입차시간이 입력되지 않았습니다.");
		frm.entrance_time.focus();
		return false;
	}
	alert("입차가 완료되었습니다!");
	document.frm.submit();
	return true;
}

function joinCheck2(){
	if(frm.car_number3.value.length==0){
		alert("차량번호가 입력되지않았습니다.");
		frm.car_number3.focus();
		return false;
	}

	if(frm.out2.value.length==0){
		alert("출차 시간이 입력되지않았습니다.");
		frm.out2.focus();
		return false;
	}
	aler("출차등록이 완료되었습니다.");
	document.frm.submit();
	return true;
}

function reset(){
	alert("모든 정보를 지우고 다시씁니다.");
	documen.frm.reset();
}

function home(){
	window.location="index.jsp";
}

function get(out2){
	if(out2=="11가 1111"){
		frm.name.value='박선수';
	}
}

