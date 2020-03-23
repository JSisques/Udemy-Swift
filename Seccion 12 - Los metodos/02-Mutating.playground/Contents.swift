import UIKit

//En una estructura no se puede modificar el valor de las variables de la clase dentro de sus propios metodos, para ello usaremos la palabra reservada mutating al principio de la funcion
struct Point{
    var x = 0.0
    var y = 0.0
    
    mutating func moveBy(x deltaX:Double, y deltaY:Double){
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point()
somePoint.moveBy(x: 3, y: 5)
print("El punto se encuentra en \(somePoint.x) y \(somePoint.y)")
