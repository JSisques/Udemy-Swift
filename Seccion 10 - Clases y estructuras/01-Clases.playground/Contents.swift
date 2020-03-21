import UIKit

//Creacion de una clase
class SomeClass{
    
}

//Creacion de una estructura
struct SomeStruct{
    
}

struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode{
    var name: String?
    var resolution = Resolution()
    var frameRate = 0.0
    var interlaced = false
}

var someResolution = Resolution()
var someVideoMode = VideoMode()
print("\(someResolution.height) x \(someResolution.width)")

print("Antes: \(someVideoMode.resolution.height)")
someVideoMode.resolution.width = 1920
someVideoMode.resolution.height = 1080
print("Despues: \(someVideoMode.resolution.height)")

// Inicializar una estructura
var vga = Resolution(width: 640, height: 480)
print("\(vga.width) x \(vga.height)")

//Cuando asiganmos a una variable una estructura el valor se pasa como copia, sin embargo si hacemos lo mismo con una clase el valor pasa referenciado
var hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

print(cinema.width)
print(hd.width)

// Las clases son tipos referenciados
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let newTenEighty = tenEighty
newTenEighty.frameRate
newTenEighty.frameRate = 30.0
newTenEighty.frameRate

print("El frame rate del ten eighty original vale \(tenEighty.frameRate)")

//Comparacion de referencias
// El triple igual quiere decir que tiene los mismos valores y ademas apuntan a la misma referencia en memoria
if tenEighty === newTenEighty {
    print("Las dos variables se refieren a la misma instancia de video mode")
}

/*
 - Encapsulación de datos simples
 - Datos que serán modificados al pasarse de un lado a otro
 - Propiedades de una estructura son tipos de valor (pasados por copia)
 - No necesita heredar nada de otra estructura
 */
/*
 - Tamaño de figuras geométricas GeometricShape(width, height)
 - Rango de valores Range(start, length)
 - Puntos 2D o 3D Point2D(x,y) Point3D(x,y,z)
 */


