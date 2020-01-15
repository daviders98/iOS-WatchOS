enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        switch velocidad {
        case .Apagado:
            let resultado = (0," Apagado")
            velocidad = Velocidades(velocidadInicial: .VelocidadBaja)
            return resultado
        case .VelocidadBaja:
            let resultado = (20, "Velocidad baja")
            velocidad = Velocidades(velocidadInicial: .VelocidadMedia)
            return resultado
        case .VelocidadMedia:
            let resultado = (50, "Velocidad media")
            velocidad = Velocidades(velocidadInicial: .VelocidadAlta)
            return resultado
        case .VelocidadAlta:
            let resultado = (120, "Velocidad alta")
            velocidad = Velocidades(velocidadInicial: .VelocidadMedia)
            return resultado
        }
    }
}
var auto = Auto()
for _ in 0...19{
    let res = auto.cambioDeVelocidad()
    print("\(res.0) ,\(res.1)")
}
