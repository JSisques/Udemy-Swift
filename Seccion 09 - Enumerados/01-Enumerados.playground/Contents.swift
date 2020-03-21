import UIKit

var str = "Hello, playground"
enum NombreEnumerado{
    //Valores del enumerado
}

enum CompassPoint{
    case north
    case south
    case east
    case west
}

enum Planet{
    case mercurio, venus, tierra, marte, jupiter, saturno, urano, neptuno
}

var directionToGo = CompassPoint.east
// Una vez inicializada la variable con el enum se pueden acceder a sus case mediante .case
directionToGo = .west

var planet : Planet = .tierra

switch directionToGo {
    case CompassPoint.north:
        print("Ir al norte")
    case CompassPoint.south:
        print("Ir al sur")
    case CompassPoint.east:
        print("Ir al este")
    case CompassPoint.west:
        print("Ir al oeste")
}

enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(6, 71680, 01362, 4)
print(productBarcode)
productBarcode = .qrCode("ASSFFFV·E%·$%GRRHB")
print(productBarcode)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let code):
    print("QR: \(code)")
}
