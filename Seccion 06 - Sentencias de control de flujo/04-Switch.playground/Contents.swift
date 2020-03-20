import UIKit

let character: Character = "i"

switch character {
case "a":
    print("ancla")
case "e":
    print("estufa")
case "i":
    print("iglú")
case "o":
    print("oso")
case "u":
    print("uña")
default:
    print("No hemos detectado ninguna vocal...")
}


var possibleVowel: Character = "k"
switch possibleVowel {
case "a", "e", "i" ,"o", "u",
     "A", "E", "I", "O", "U":
    print("Es una vocal")
default:
    print("No es una vocal")
}

var moons = 62
var planet = "Saturn"
var readableCount: String
switch moons {
    case 0:
        readableCount = "Ninguna"
    case 1..<5:
        readableCount = "Entre 1 y 4"
    case 5..<12:
        readableCount = "Entre 5 y 12"
    case 12..<100:
       readableCount = "Entre 12 y 100"
    case 100..<1000:
       readableCount = "Entre 100 y 1000"
default:
    readableCount = "Muchas"
}

print(readableCount)

var point = (2,-2)
switch point {
case (0,0):
    print("Origen de coordenadas")
case(_,0):
    print("Se halla sobre el eje X")
case(0,_):
    print("Se halla sobre el eje Y")
case(-2...2, -2...2):
    print("Esta dentro del rango de la caja")
default:
    print("Esta fuera de la caja")
}

switch point {
case (let x, 0):
    print("Se haya en el eje X con la coordenada \(x)")
case (0, let y):
    print("Se haya en el eje Y con la coordenada \(y)")
case (let x, let y):
    print("Se haya en el eje X con la coordenada \(x), y en el eje Y con la coordenada \(y)")
}

switch point {
case let(x,y) where x == y:
    print("El punto esta sobre la recta X = Y")
    case let(x,y) where x == -y:
    print("El punto esta sobre la recta X = -Y")
case let(x,y):
    print("Esto es un punto cualquiera \(x) \(y)")
}

let otherPoint = (7,0)
switch otherPoint {
case (let distance, 0), (0, let distance):
    print("Sobre el eje, y a distancia \(distance) del orígen de coordenadas")
default:
    print("No está sobre el eje")
}
