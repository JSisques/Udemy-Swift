import UIKit

var isRaining = true

if isRaining{
    print("Cogue el paraguas")
}

var temperature = 25
if temperature < 12 {
    print("Abrigate")
} else{
    print("No te pongas el abrigo")
}

if temperature < 12 {
    print("Abrigate")
} else if temperature >= 30{
    print("Ponte el bañador")
} else {
    print("No te pongas el abrigo")
}
