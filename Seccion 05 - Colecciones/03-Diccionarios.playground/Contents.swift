import UIKit

//Dictionary<Key, Value>
var integerNames = [Int : String]()
integerNames[32] = "treinta y dos"
integerNames.removeAll()

var airports : [String: String] = ["PMI": "Palma de Mallorca", "BCN": "Barcelona", "MAD": "Madrid"]
print(airports)

var pass = ["Ingles": true, "Mates": false, "Ciencias": true]

if airports.isEmpty {
    print("No hay aeropuertos")
} else{
    print("Si hay aeropuertos")
}

//Añadir elementos
airports["LHR"] = "Londres"

//Cambiar valores
airports["LHR"] = "Londres Heathrow"
print(airports)

if let oldValue = airports.updateValue("Barcelona El Prat", forKey: "BCN"){
    print("El valor antiguo era \(oldValue)")
}

//Borrar elemento
airports["MAD"] = nil
airports.removeValue(forKey: "PMI")
print(airports)

//Recorrer diccionarios
for (airportKey, airportName) in airports{
    print("El aeropuerto con clave \(airportKey) es \(airportName)")
}

//Recorrer diccionarios solo con claves
for airportKey in airports.keys{
    print(airportKey)
}

//Recorrer diccionarios solo con valores
for airportName in airports.values{
    print(airportName)
}
