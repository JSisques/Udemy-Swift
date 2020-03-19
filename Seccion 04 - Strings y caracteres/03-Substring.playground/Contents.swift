import UIKit

var welcome = "Hello, world!"

//String.Index = Clase especial para posiciones de String basado en su codificacion unicode
welcome.startIndex

// Sacar el primer elemento de un String
welcome[welcome.startIndex]

// Sacar el ultimo elemento de un String
welcome[welcome.index(before: welcome.endIndex)]

// Sacar el caracter de la posicion 7
let index = welcome.index(welcome.startIndex, offsetBy: 7)
welcome[index]

// Lo siguiente da error
//welcome[welcome.endIndex]
//welcome.index[after: welcome.endIndex]

//Para sacar los caracteres de una palabra
for index in welcome.indices{
    print("\(welcome[index])")
}

//Añadir caracteres al String
welcome.insert("!", at: welcome.endIndex)

//Añadir un string a otro
welcome.insert(contentsOf: "!!!", at: welcome.endIndex)

// Eliminar caracteres
welcome.remove(at: welcome.index(before: welcome.endIndex))

//Eliminar un rango
let range = welcome.index(welcome.endIndex, offsetBy: -3)..<welcome.endIndex
welcome.removeSubrange(range)

//Substring
let blankIndex = welcome.index(of: " ") ?? welcome.endIndex
let firstPart = welcome[..<blankIndex]
let secondPart = welcome[blankIndex...]
//Para almacenarlos hay que convertirlos a String
let newString = String(firstPart)

//COMPARACION DE STRINGS
var name = "Javi"
var alias = "Javi"

if name == alias{
    print("Estos dos strings son iguales")
} else{
    print("Estos dos strings son diferentes")
}

//Prefijos y sufijos
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, a public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var numberOfScenes = 0

for scene in romeoAndJuliet{
    if scene.hasPrefix("Act 1"){
        numberOfScenes += 1
    }
}

print("Hay \(numberOfScenes) escenas en el primer acto de Romeo y Julieta")

var mansionsCount = 0, cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        mansionsCount += 1
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}
