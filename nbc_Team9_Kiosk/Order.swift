//
//  Order.swift
//  nbc_Team9_Kiosk
//
//  Created by t2023-m0035 on 12/6/23.
//

class Order {
    var myWallet: Double = 20 //초기 잔액 설정 20 w
    var totalPrice: Double = 0 //장바구니에 담긴 상품들의 총 합 가격
    
    func order(_ price: Double){
        totalPrice = price
        
        if myWallet >= price{
            print("아래와 같이 주문 하시겠습니까?")
            print("asdasd")
            print("\n[ Total ]")
            print("\(totalPrice)\n")
            print("1. 주문       2. 메뉴판")
            
        }else{
            print("현재 잔액은 \(myWallet)W 으로 \(totalPrice-myWallet)W 이 부족해서 주문할 수 없습니다.")
        }
    }
}
