//: Velocimetro Digital
import UIKit

//Enumeracion
enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

//Clase
class Auto {
    var velocidad : Velocidades
    init() {
        self.velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        var estado : (Int, String)
        switch velocidad {
            
        case .Apagado:
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadBaja)
            estado = (Velocidades.Apagado.rawValue, "Apagado")
        case .VelocidadBaja:
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadMedia)
            estado = (Velocidades.VelocidadBaja.rawValue, "Velocidad baja")
        case .VelocidadMedia:
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadAlta)
            estado = (Velocidades.VelocidadMedia.rawValue, "Velocidad media")
        default:
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadMedia)
            estado = (Velocidades.VelocidadAlta.rawValue, "Velocidad alta")
            
        }
        
        return estado
    }
}

var auto = Auto()

for i in 1...20 {
    var resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}


