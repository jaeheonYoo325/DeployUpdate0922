/**
 * Author : Yoo jaeheon
 */

var controller = $.extend(new $.CommonObj(), {
	eventInit:function() {
		
	}, onCreate:function() {
		
		$("#employeeRegistBtn").click(function() {
			
			if ( controller.validationRegistCheck() == true ) {
				return;
			} else {
				$("#employeeRegistFrm").attr({
					method:"post", 					     				     	
			     	action:"/employee/employeeRegist.do"
				}).submit();
			}
			
		});
		
		$("#addressBtn").click(function(){
			controller.exeDaumPostcode();
		}); 
		
	}, validationRegistCheck : function() {
		var empNo = $("#empNo").val();
		var empPw = $("#empPw").val();
		var empName = $("#empName").val();
		var empPh = $("#empPh").val();
		var empPc = $("#empPc").val();
		var empCad = $("#empCad").val();
		var empDad = $("#empDad").val();
		var empCph = $("#empCph").val();
		var empEmail = $("#empEmail").val();
		var empjoinDate = $("#empjoinDate").val();
		var depNo = $("#depNo").val();
		var positionNo = $("#positionNo").val();
		
		if ( empNo == "") {
			alert("사원번호를 입력해주세요.");
			return true;
		}
		if ( empPw == "") {
			alert("비밀번호를 입력해주세요.");
			return true;
		}
		if ( empName == "") {
			alert("사원이름를 입력해주세요.");
			return true;
		}
		if ( empPh == "") {
			alert("전화번호를 입력해주세요.");
			return true;
		}
		if ( empPc == "") {
			alert("우편번호를 입력해주세요.");
			return true;
		}
		if ( empCad == "") {
			alert("주소를 입력해주세요.");
			return true;
		}
		if ( empCph == "") {
			alert("회사 전화번호를 입력해주세요.");
			return true;
		}
		if ( empjoinDate == "") {
			alert("사원번호를 입력해주세요.");
			return true;
		}
		if ( empEmail == "") {
			alert("이메일을 입력해주세요.");
			return true;
		}
		if ( empjoinDate == "") {
			alert("입사일을 입력해주세요.");
			return true;
		}			
		/*if ( depNo == "") {
			alert("부서번호를 입력해주세요.");
			return true;
		}
		if ( positionNo == "") {
			alert("직급번호를 입력해주세요.");
			return true;
		}*/
	}, exeDaumPostcode : function() {
		new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { 
                	// 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { 
                	// 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
              // $("zipCode").val() = data.zonecode;
               document.getElementById('empPc').value = data.zonecode;
               //5자리 새우편번호 사용
               //$("address").val() = fullAddr;
               document.getElementById('empCad').value = fullAddr;
               // 커서를 상세주소 필드로 이동한다.
               //$("Daddress").focus();
               document.getElementById('empDad').focus();
            }
        }).open();
	} 
	
	
});


$(document).ready(function() {
	controller.init();
});
