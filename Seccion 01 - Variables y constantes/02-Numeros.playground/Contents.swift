import UIKit

//NUMEROS ENTEROS

//El valor de un UInt8 es 0
let minValue = UInt8.min
//El valor de un UInt8 es 255
let maxValue = UInt8.max

//Declaracion de un numero entero
var miEntero: Int = 6

//Valores de 32 bits
print("Valores de 32 bits: (\(Int32.min), \(Int32.max))")
//Valores de 64 bits
print("Valores de 64 bits: (\(Int64.min), \(Int64.max))")

//NUMEROS DECIMALES
let π = 3.14159265
let minT = -273.15

//LITERALES NUMERICOS

//Decimal
var decimalNumber = 17

//Binario
var binaryNumber = 0b10001

//Octal
var octalNumber = 0o21 // 17 en octal

//Hexadecimal
var hexNumber = 0x11 // 17 en hexadecimal

//CASTING
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = Double(3)

//RENOMBRAMIENTO DE CLASES
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max
