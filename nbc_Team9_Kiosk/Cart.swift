//
//  Cart.swift
//  nbc_Team9_Kiosk
//
//  Created by t2023-m0035 on 12/6/23.
//

//struct MenuItem {
//    var name: String
//    var price: Double
//}


class Cart {
    let order = Order()
    
    var checkCart: Bool = false
    var products: [MenuItem] = []
    
    func addProduct(product: MenuItem) {
        products.append(product)
        checkCart = true
        print("\(product.name)이 장바구니에 추가되었습니다.")
    }
    
    func removeCart(){
        checkCart = false
        products = []
    }
    
    func removeProduct(product: MenuItem) {
        if let index = products.firstIndex(where: { $0.name == product.name }) {products.remove(at: index)
            print("\(product.name)이 장바구니에서 제거되었습니다.")
        } else {
            print("장바구니에 해당 상품이 없습니다.")
        }
    }
                                             
    func TotalPrice() -> Double {
            let totalPrice = products.reduce(0) { $0 + $1.price}
            return totalPrice
        }
                                             
    func displayCart() {
            print("장바구니에 담긴 상품 목록")
            for product in products {
                print("\(product.name) - 가격: \(product.price)원")
            }
            let totalPrice = TotalPrice()
            print("총 가격: \(totalPrice)원")
            order.order(totalPrice, cartInstance: self)
        }
}
