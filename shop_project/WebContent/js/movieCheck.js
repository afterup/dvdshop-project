
function validateCheck(){
    	 var f = document.frm;//f== 폼 엘리먼트 객체 
 		
    	if(f.movienm.value==""){
        		alert('아이디를 입력해주세요.');
        		f.movienm.focus();
        		return;

    	}else if(f.genrenm.value==""){
    		alert('장르를 입력해주세요.');
    		f.genrenm.focus();
    		return;

    	}else if(f.supervison.value==""){
    		alert('감독명을 입력해주세요.');
    		f.supervison.focus();
    		return;

		}else if(f.watchgradenm.value == ""){
			alert('등급을 입력해주세요.');
			f.watchgradenm.focus();
			return;	
		}else if(f.moviedesc.value == ""){
			alert('설명을 입력해주세요.');
			f.moviedesc.focus();
			return;	
    	}else{
    		alert('추가 완료');
    		f.submit();
    	} 
      }//validateCheck()