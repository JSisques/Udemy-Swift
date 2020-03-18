import UIKit

var piratasFallecidos = ["Juanjo", "Marco", "Pedro", "Toni"]
var nuevosPiratas = ["Alejandro", "Cristobal", "Mario", "Javier"]

let mensajePiratasFallecidos = "Los \(piratasFallecidos.count) piratas que han fallecido son: "
let mensajeNuevosPiratas = "Los \(nuevosPiratas.count) nuevos piratas de la tripulacion son: "

print("\(mensajePiratasFallecidos) \(piratasFallecidos)")
print("\(mensajeNuevosPiratas) \(nuevosPiratas)")

let fecha = Date()

let formateFecha = DateFormatter()
formateFecha.dateStyle = .full
formateFecha.timeStyle = .none
print(formateFecha.string(from: fecha))
