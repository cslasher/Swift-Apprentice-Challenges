import UIKit

//Challenge B

struct Tshirt {
    let size: String
    let color: String
    let price: Double
    let imageURL: String
}

class Shopper {
    var name: String
    var email: String
    var cart: ShoppingCart
    
    init(name: String, email: String, cart: ShoppingCart) {
        self.name = name
        self.email = email
        self.cart = cart
    }
}

struct Address {
    let name: String
    let street: String
    let city: String
    let zip: String
}

class ShoppingCart {
    var order: [Tshirt]
    var address: Address
    
    init(order: [Tshirt], address: Address) {
        self.order = order
        self.address = address
    }
    
    func getTotalCost() -> Double {
        var total: Double = 0
        for item in order {
            total += item.price
        }
        return total
    }
}

let yellowXLT = Tshirt(size: "XL", color: "yellow", price: 12.99, imageURL: "http://img.example.com/yellowT.png")
let redST = Tshirt(size: "S", color: "red", price: 8.99, imageURL: "http://img.example.com/redT.png")

let address1 = Address(name: "John", street: "103 Pershing St.", city: "Machester", zip: "03102")

var cart1 = ShoppingCart(order: [yellowXLT, redST], address: address1)

var shopper1 = Shopper(name: "John", email: "john@email.com", cart: cart1)

print("Total cost of \(shopper1.name): \(shopper1.cart.getTotalCost())")