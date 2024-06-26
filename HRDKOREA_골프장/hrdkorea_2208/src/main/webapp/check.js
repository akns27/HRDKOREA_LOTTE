


function joinCheck(){
	if(frm.regist_month.value.length == 0){
		alert("수강명이 입력되지 않았습니다");
		frm.regist_month.focus();
		return false;
	}
	if(frm.c_name.value.length == 0){
		alert("회원명이 입력되지 않았습니다");
		frm.c_name.focus();
		return false;
	}
	if(frm.c_no.value.length == 0){
		alert("수강명이 입력되지 않았습니다");
		frm.c_no.focus();
		return false;
	}
	if(frm.class_area.value.length == 0){
		alert("강의장소가 입력되지 않았습니다");
		frm.class_area.focus();
		return false;
	}
	if(frm.class_name.value.length == 0){
		alert("강의명이 입력되지 않았습니다");
		frm.class_name.focus();
		return false;
	}
	if(frm.tuition.value.length == 0){
		alert("수강료가 입력되지 않았습니다");
		frm.tuition.focus();
		return false;
	}else{
		alert("수강신청이 정상적으로 완료되었습니다.");
		document.frm.submit();
		window.location ="index.jsp";
	}
 }
 
 function reset(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
	frm.month.focus();
 }
 
 function get(c_no){
	frm.number.value=c_no;
	ccno = c_no;
 }
 
 function make(class_name){
	if(ccno>=20000){
		frm.money.value=class_name*1000/2;
	}
	else{
		frm.money.value= *1000;
	}
 }