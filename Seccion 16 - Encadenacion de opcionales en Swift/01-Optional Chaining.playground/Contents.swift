import UIKit

class Person{
    var residence: Residence?
}

class Residence{
    var numberOfRooms = 1
}

var javi = Person()
print(javi.residence)

//No se puede consultar el valor de una variable opcional
//haciendo un unwrapping si no estamos seguros de que ha sido configurada
//print(javi.residence!.numberOfRooms)

if let roomCount = javi.residence?.numberOfRooms{
    print("La casa de Javi tiene \(roomCount) habitacion(es)")
} else{
    print("No tenemos ni idea de las habitaciones de la casa de Javi")
}
