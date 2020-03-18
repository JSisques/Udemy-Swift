import UIKit

var edadCapitan: UInt8 = 35
var añosDeCapitania: UInt8 = 12

var contraseña: UInt64 = UInt64(pow(Double(edadCapitan), Double(añosDeCapitania)))
print("Contraseña del timon: \(contraseña)")
