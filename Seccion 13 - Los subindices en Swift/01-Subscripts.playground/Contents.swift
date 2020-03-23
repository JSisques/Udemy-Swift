import UIKit

class SomeClass{
    subscript(index: Int) -> Int{
        get{
            return 5
        } set(newValue){
        
        }
    }

}

struct TimesTable{
    
    var multiplier: Int
    
    subscript(index:Int) -> Int{
        return multiplier * index
    }
}

var timesTable = TimesTable(multiplier: 3)
for i in 1...10{
    print("8 x 3 = \(timesTable[i])")
}

let collection = [4,6,8,19,43]
collection[2]

let numberOfLegs = ["pulpo": 8, "perro": 4, "pajaro": 2, "araña": 8]
numberOfLegs["perro"]
