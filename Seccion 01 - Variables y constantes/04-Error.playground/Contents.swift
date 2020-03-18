import UIKit

//ERRORES
func canTrowError() throws{
    
}

do{
    try canTrowError()
    //Si no ha lanzado error
    //...
} catch{
    //Si hay error
}

//ASERCIONES Y PRECONDICIONES
let age = -8
//assert(age >= 0, "Una persona no puede tener edad negativa")
//assert(age >= 0)

/*
if age > 10{
    print("Puedes subir a la montaña rusa")
} else if age > 0 {
    print("Eres demasiado pequeño")
} else{
    assertionFailure("Una persona no puede tener edad negativa")
}
*/

let index = -5
precondition(index >= 0, "Los indices deben ser mayores o iguales a cero")

