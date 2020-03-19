import UIKit


var someInts: [Int] = []
var moreInts = [Int]()
print("El array contiene \(someInts.count)")

someInts.append(3)
print("El array contiene \(someInts.count)")

var threeDoubles = Array(repeating: 0.0, count: 3)
var fourDoubles = Array(repeating: 3.1415, count: 4)
var sevenDoubles = threeDoubles + fourDoubles

var shoppingList: [String] = ["Pimientos", "Cebolla", "Pollo", "Tortillas"]

if shoppingList.isEmpty{
    print("No hay nada que comprar")
}else {
    print("Hay que ir al mercado")
}

var firstItem = shoppingList[0]
shoppingList[0] = "Tres pimientos"
print(shoppingList)

//Cambiar un rango entero
shoppingList[1...3] = ["Lechuga"]
print(shoppingList)

//Insertar
shoppingList.insert("Mostaza", at: 1)
print(shoppingList)

//Borrar elementos
shoppingList.remove(at: 2)
print(shoppingList)

//Borrar el ultimo
shoppingList.removeLast()
print(shoppingList)

//ITERACIONES
for item in shoppingList{
    print(item)
}

//Para sacar el indice y el dato
for (index, item) in shoppingList.enumerated(){
    if index % 2 == 0{
    print("Item numero \(index + 1): \(item)")
    }
}
