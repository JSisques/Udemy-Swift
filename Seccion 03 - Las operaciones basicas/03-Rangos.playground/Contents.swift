import UIKit

//RANGOS CERRADOS
for index in 1...10{
    print("\(index) x 5 = \(index * 5)")
}

//RANGOS SEMIABIERTOS
let names = ["Juan Gabriel", "Mar", "Maria", "Juanjo", "Antonia", "Carmen"]
let count = names.count

for i in 0..<count{
    print("La persona \(i) se llama \(names[i])")
}

//RANGOS UNILATERAL
for name in names[2...]{
    print(name)
}
