import UIKit

//UNICODE
let null = "\0"
let backslash = "\\"
let tab = "\n"
let carro = "\r"
let comilla = "\""

print("\u{24}")
print("\u{2665}")
print("\u{1F496}")

let koreanExample: Character = "\u{D55c}"
let decomposedExample: Character = "\u{1112}\u{1161}\u{11AB}"
print(koreanExample)

let patriots: Character = "\u{1F1FA}\u{1F1F8}"

let animals = "🐶 🎠"

print("La granja de pepito tiene \(animals.count) caracteres")

