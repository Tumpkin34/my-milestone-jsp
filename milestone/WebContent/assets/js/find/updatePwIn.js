/**
 * 
 */

$('#next').on('click', function() {
	const individualMemberPassword = $('input[name = "individualMemberPassword"]');
	const checkIndividualMemberPassword = $('input[name = "checkIndividualMemberPassword"]');
	if (!individualMemberPassword.val()) {
		alert('새 비밀번호를 입력하세요.');
		individualMemberPassword[0].focus();
		return;
	}
	//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
	var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//한글이 포함되었는 지 검사
	var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	//같은 문자 4번 이상
	var wordCheck = /(\w)\1\1\1/;
	//공백검사
	var spaceCheck = /\s/;

	console.log(updateForm.individualMemberPassword.value)
	if (!pwCheck.test(updateForm.individualMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		individualMemberPassword[0].focus();
		return;
	}

	if (hangleCheck.test(updateForm.individualMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		individualMemberPassword[0].focus();
		return;
	}

	if (wordCheck.test(updateForm.individualMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		individualMemberPassword[0].focus();
		return;
	}

	if (spaceCheck.test(updateForm.individualMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		individualMemberPassword[0].focus();
		return;
	}
	
	if (!checkIndividualMemberPassword.val()) {
		alert('새 비밀번호 확인을 입력해 주세요.');
		checkIndividualMemberPassword[0].focus();
		return;
	}
	if (!(individualMemberPassword.val() == checkIndividualMemberPassword.val())) {
		alert('새 비밀번호와 비밀번호 확인이 일치하지 않습니다.');
		checkIndividualMemberPassword[0].focus();
		return;
	}
	alert('비밀번호가 변경되었습니다');
	updateForm.submit();

})