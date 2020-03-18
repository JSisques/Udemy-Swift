import UIKit

//STRINGS
var myString = "Hola, esto es un String"

let frase = """
En un lugar de la mancha
de cuyo nombre no quiero acordarme
...
"""
//Comprobar si un string esta vacio
if myString.isEmpty{
    print("Mi String esta vacio")
} else{
    print("Mi String no esta vacio")
}

//Concatenaciones
myString += "Hola"
myString.append("?")

for character in "Perrito 🐶"{
    print(character)
}

let questionMark : Character = "?"

//Se pueden crear Strings a traves de un array de Character
let dogArray: [Character] = ["P", "e", "r", "r", "o", "🐶"]
let dogString = String(dogArray)
print(dogString)
