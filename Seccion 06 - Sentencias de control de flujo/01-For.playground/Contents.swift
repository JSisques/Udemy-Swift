import UIKit

var dishes = ["Pizza", "Hamburguesa", "Ensalada", "Patatas fritas"]

for dish in dishes{
    print("Hoy de menu tenemos \(dish)")
}

var animals = ["Araña": 8, "Perro": 4, "Hormiga": 6]
for (animalName, numberOfLegs) in animals{
    print("\(animalName) tiene \(numberOfLegs) patas")
}


for i in 1...10{
    print("3 x \(i) = \(3 * i)")
}

//Si no se va usar la i en un bucle se pone _
for _ in 1...10{
    print(2*2)
}

//Del 1 al 9
for i in 1..<10{
    print(i)
}

//Bucle con saltos hasta 59
var seconds = 60
for tick in stride(from: 0, to: seconds, by: 5){
    print(tick)
}
//Bucle con saltos hasta 60
for tick in stride(from: 0, through: seconds, by: 5){
    print(tick)
}
