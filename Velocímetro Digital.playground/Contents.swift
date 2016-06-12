//: Playground - noun: a place where people can play

//Velocimetro Digital
import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    var cambios: Bool = true
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
        print(" Se inicializa con \(self.velocidad)")
    }
    
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String ) {
        
        var miVelocidad : Int
        var estatus : String
        miVelocidad = self.velocidad.rawValue
        
        switch self.velocidad{
            
        case .Apagado:
            self.velocidad = .Apagado
            estatus = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadBaja
            estatus = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadMedia
            estatus = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadAlta
            estatus = "Velocidad Alta"
        }
        
        if cambios {
            if velocidad == .Apagado {
                velocidad = .VelocidadBaja
            } else if velocidad == .VelocidadBaja {
                velocidad = .VelocidadMedia
            } else if velocidad == .VelocidadMedia {
                velocidad = .VelocidadAlta
            } else if velocidad == .VelocidadAlta {
                velocidad = .VelocidadMedia
            }
        }
        
        return (actual: miVelocidad, velocidadEnCadena: estatus)
    }
}

var auto = Auto()

for var i in 1...20 {
    print(auto.cambioDeVelocidad())
}
