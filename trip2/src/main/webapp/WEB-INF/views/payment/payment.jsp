<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">

<script>
    function validatecardnumber(cardNum) {
   
        //빈칸과 대시 제거
        cardNum = cardNum.replace(/[ -]/g,'');
 
        //카드 번호가 유효한지 검사
        //정규식이 캡처 그룹들 중 하나에 들어있는 숫자를 캡처
        var match =  /^(?:(94[0-9]{14})|(4[0-9]{12}(?:[0-9]{3})?)|(5[1-5][0-9]{14})|(6(?:011|5[0-9]{2})[0-9]{12})|(3[47][0-9]{13})|(3(?:0[0-5]|[68][0-9])[0-9]{11})|((?:2131|1800|35[0-9]{3})[0-9]{11}))$/.exec(cardNum);
       
        if(match) {
 
            //정규식 캡처 그룹과 같은 순서로 카드 종류 나열
            var types = ['BC', 'Visa', 'MasterCard', 'Discover', 'American Express', 'Diners Club', 'JCB'];
 
            //일치되는 캡처 그룹 검색
            //일치부 배열의 0번째 요소 (전체 일치부중 첫 일치부)를 건너뜀
            for(var i = 1; i < match.length; i++) {
                if(match[i]) {
                    //해당 그룹에 대한 카드 종류를 표시
                    document.getElementById('notice').innerHTML = types[i-1];
                    break;
                }
            }
 
        } else {
            document.getElementById('notice').innerHTML = '(잘못된 카드 번호)';
        }
    }
 </script>

<header>
   <h1>로고</h1>
</header>
<hr>

<section>
<form method="post">
<div align="center">
   <fieldset style="width: 500px">
      <legend>이용 가능한 결제방법</legend>
      <table>
         <tr rowspan="2">
            <th>카드 명의자 이름(영문)<br></th>
         </tr>
         <tr>
            <td><input type="text" name="cardUsername" value="${sessionScope.login.username }" readonly></td>
         </tr>
         <tr rowspan="2">
            <th>신용/직불카드 번호</th>
         </tr>
         <tr>
            <td><input type="text" name="cardNum" onkeyup="validatecardnumber(this.value)" required></td>
            <td><p id="notice">(카드 번호가 입력되지 않았습니다)</p></td> 
         </tr>
         <tr>
            <th>카드 유효기간</th>
            <th>CVC/CVV/CCV</th>
         </tr>
         <tr>
            <td><input type="text" name="cardExpireDate" placeholder="MM/YY(월/년)" required></td>
            <td><input type="text" name="cvcNum" required></td>
         </tr>
      </table>
   </fieldset>
   <p>계속 진행함으로써 000의 <a href="clause">이용약관</a>에 동의하고 000의 <a href="personalInfo">개인정보 처리방침</a>을 인정합니다.</p>
   
   <p><input type="submit" value="결제하기" style="margin-top: 5px"></p>
</div>
</form>
</section>
<aside>

</aside>
</div>
</body>
</html>
