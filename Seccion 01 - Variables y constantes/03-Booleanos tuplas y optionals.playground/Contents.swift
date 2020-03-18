import UIKit

//BOOLENAOS
var myBool: Bool = true

let orangesAreOrange:Bool = true
let turnipAreDelicius = false

if turnipAreDelicius{
    print("Que ricos los nabos")
} else {
    print("Queta ese nabo de mi vista")
}

//TUPLAS
let httpError: (Int, String) = (404, "Error, not found")
let coordinates: (Int,Int,Int)

//Podemos asignar dos variables o mas a una tupla
let (statusCode, statusMessage) = httpError
print("El codigo de error es \(statusCode) y el mensaje que devuelve es \(statusMessage)")

//Para coger simplemente un valor e ignorar el resto usamos _
let (juststatusCode, _) = httpError
print("El codigo de error es \(juststatusCode)")

//Tambien se puede hacer referencia poniendo el nombre de la tupla seguido de un . y la posicion del dato
print("La primera es \(httpError.0) y la segundaes \(httpError.1)")

//Se pueden asignar nombres de variables dentro de la misma tupla
let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode)
print(http200Status.description)

//OPTIONALS
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)

var serverResponseCode : Int? = 404
serverResponseCode = nil //Nulo

var answer: String?

if serverResponseCode != nil{
    print("El codigo del servidor no es nulo")
    //Ponemos la ! al final para sacar el valor de un optional
    print("El codigo es: \(serverResponseCode!)")
} else {
    print("El codigo del servidor es nulo")
}

//Si puedo guardar el valor de possible number en una variable quiere decir que tiene valor, es distinto a nil
if let actualNumber = Int(possibleNumber){
    print("Mi numero actual en \(actualNumber)")
} else{
    print("\(possibleNumber) no contiene un numero entero")
}
