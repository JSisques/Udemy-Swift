import UIKit

enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case intro = "\n"
    case carriage = "\r"
    case point = "."
}

enum Planet: Int {
    // Con esta sintaxis Swift da valores numericos a todos los elementos simplemente con indicar el primer elemento
    // Mercurio = 1
    // Venus = 2
    // Tierra = 3
    // ...
    case mercurio = 1, venus, tierra, marte, jupiter, saturno, urano, neptuno
}


enum CompassPoint: String{
    // Si se utilizan enumerados de String Swift dará el valor del numbre del enum al String
    // north = north
    case north, south, east, west
}

//Para acceder al valor de un enum usaremos la propiedad rawValue
var earth = Planet.tierra.rawValue
print(earth)

var sunsetDirection = CompassPoint.west.rawValue
print(sunsetDirection)

//ENUMERACION RECURSIVA
// Para indicar que es una enumeracion recursiva se utiliza la palabra clave indirect
// Si tenemos muuchos casos dentro del enum que utilicen enumeracion recursiva se puede indicar al principio del todo
// Si solo es 1 o pocos se puede indicar en cada case
indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    //indirect case division(ArithmeticExpression, ArithmeticExpression)
}

// (2 + 5) * 3
let two = ArithmeticExpression.number(2)
let three = ArithmeticExpression.number(3)
let five = ArithmeticExpression.number(5)
let sum = ArithmeticExpression.addition(two, five)
let product = ArithmeticExpression.multiplication(sum, three)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
