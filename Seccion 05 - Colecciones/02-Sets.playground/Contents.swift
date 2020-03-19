import UIKit

var letters = Set<Character>()
print("El conjunto tiene \(letters.count)")

letters.insert("a")

var favoutiteFood: Set<String> = ["Pizza", "Macarrones", "Ensalada"]
var moreFood: Set = ["Pescado", "Carne", "Marisco"]

favoutiteFood.isEmpty

favoutiteFood.insert("Lasaña")

// Eliminar
favoutiteFood.remove("Macarrones")

if favoutiteFood.contains("Patatas"){
    print("Contiene patatas")
    favoutiteFood.remove("Patatas")
} else {
    print("No contiene patatas")
}

//OPERACIONES CON CONJUNTOS
var pares: Set = [0,2,4,6,8]
var impares: Set = [1,3,5,7,9]
var primos: Set = [2,3,5,7]

print(pares.union(impares).sorted()) // Todos
print(pares.intersection(impares).sorted()) //Los que sean pares e impares
print(pares.subtracting(impares).sorted()) // Solo los de pares
print(pares.symmetricDifference(primos).sorted()) //Solo los pares y primos

var houseAnimals: Set = ["🐶", "😸"]
var farmAnimals: Set = ["🐶", "😸", "🐔", "🐑", "🐮", "🐷"]
var cityAnimals = ["🐭", "🐦"]

//Es un subconjunto dex
houseAnimals.isSubset(of: farmAnimals)
//Es un superconjunto
farmAnimals.isSuperset(of: houseAnimals)
//Es un subconjunto estricto
farmAnimals.isStrictSubset(of: houseAnimals)
//Es un disjunto
farmAnimals.isDisjoint(with: cityAnimals)

