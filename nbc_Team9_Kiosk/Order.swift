//
//  Order.swift
//  nbc_Team9_Kiosk
//
//  Created by t2023-m0035 on 12/6/23.
//

class Order {
    
    var myWallet: Double = 1000 //초기 잔액 설정 1000 w
    var totalPrice: Double = 0 //장바구니에 담긴 상품들의 총 합 가격
    
    func order(_ price: Double, cartInstance: Cart){
        totalPrice = price
        
        print("아래와 같이 주문 하시겠습니까?")
        print("\n[ Total ]")
        print("\(totalPrice)W\n")
        print("1. 주문       2. 메뉴판")
        
        if let input = readLine() {
            if myWallet >= price{
                switch input {
                case "1":
                    print("주문을 성공했습니다.")
                    myWallet -= totalPrice
                    print("현재 잔액은 \(String(format: "%.2f", myWallet))W 입니다.")
                    cartInstance.removeCart()
                case "2":
                    print("이전 메뉴로 돌아갑니다.")
                    break
                default:
                    print("다시 입력해주세요")
                }
            }else{
                print("현재 잔액은 \(String(format: "%.2f", myWallet))W 으로 \(String(format: "%.2f", totalPrice - myWallet))W 이 부족해서 주문할 수 없습니다.")
            }
        }
    }
}
