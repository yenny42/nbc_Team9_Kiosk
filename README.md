# NBCAMP 프로그래밍 심화 팀 과제 : 키오스크 

### ⭐ 과제 설명
메뉴판을 보고 주문할 수 있는 Swift 프로그램입니다. 
<br/>콘솔창으로 간단히 동작하며 숫자를 입력해서 사용할 수 있습니다. 

![키오스크팀과제](https://github.com/yenny42/nbc_Team9_Kiosk/assets/107637741/df67b1f8-fede-4dd8-a518-e185e4f093b2)


<br />

### 🌱 9팀 팀원


- [유창선](https://github.com/ycs9608)   
  ----
  #### Main 클래스
  - 번호를 선택 Menu 클래스(showDetailMenu) 메소드 처리, 상세 정보, 해당메뉴를 Cart에 추가하는 역할
  - 5번 입력하면 Cart 내용을 확인 주문 진행, Order 클래스의 order 메소드는 장바구니의 총 가격을 받아 주문 처리
  - 6번 입력하면 Cart의 상품을 제거하고 주문 취소 메시지가 프린트, Cart는 비워진다
  - 0번 입력하면 프로그램은 종료
<br/><br/>

- [최예은](https://github.com/yenny42)    
  ----
  #### Menu 클래스
  - Burgers, FrozenCustard, Drinks, Beer 데이터를 저장
  - Main 클래스에서 입력한 값을 받아와서 저장
   - Main 클래스에서 입력받은 값을 바탕으로 <br/>Burgers, FrozenCustard, Drinks, Beer 중 어떤 메뉴를 보여줄 지 분기
  - 선택한 세부 메뉴를 Cart에 넘겨주기
<br/><br/>

- [배병철](https://github.com/baerongmerong)  
  ----
  #### Cart 클래스
  - 선택한 메뉴 데이터를 장바구니에 [추가/제거] 기능 (최예은님, 윤규호님 도움)
  - 장바구니 목록 출력{displayCart} 및 장바구니에 담겨있는 상품들 Total 값 보여주기 {TotalPrice}
  - 주문을 위한 데이터 [주문]에 넘겨주기 - (윤규호님 도움)
<br/><br/>

- [윤규호](https://github.com/ykyohub)   
  ----
  #### Order 클래스
  - Cart 클래스에서 받아온 장바구니 목록 주문
  - 장바구니 목록의 총액(totalPrice)과 내 잔액(myWallet) 비교 후 주문, 잔액 업데이트
  - 잔액 부족시 예외처리
<br/><br/>


