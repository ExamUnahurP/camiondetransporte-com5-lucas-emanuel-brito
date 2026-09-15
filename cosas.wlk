object knightRider {
    method peso(){
        return 500
    }

    method peligrosidad(){
        return 10
    }
}

object bumblebee {
    var esAuto = true
    method peso(){
        return 800
    }

    method esAuto(){
        return esAuto
    }

    method cambiarEstado() {
        esAuto = not esAuto
    }

    method peligrosidad(){
        if (self.esAuto()) {
            return 15
        } else {
            return 30
        }
    }
}

object paqueteDeLadrillo {
    var ladrillos = 1

    method cambiarCantidadDeLadrillos(valor) {
        ladrillos = valor.max(0)
    }

    method peso() {
        return 2 * ladrillos
    }

    method peligrosidad() {
        return 2
    }
}

object arenaAGranel {
    var peso = 1
    
    method peso() {
        return peso
    }

    method cambiarPeso(unPeso) {
        peso = unPeso
    }

    method peligrosidad() {
        return 1
    }
}

object bateriaAntiaerea {
    var tieneMisiles = true
    
    method peso() {
        if tieneMisiles {
            return 300
        } else {
            return 200
        }
    }

    method tieneMisiles() {
        tieneMisiles = not tieneMisiles
    }

    method peligrosidad() {
        if tieneMisiles {
            return 100
        } else {
            return 0
        }
    }
}

object contenedorPortuario {
    const cosas = #{bumblebee, paqueteDeLadrillo}

    method cosas()= cosas

    method peso() {
        return 100 + cosas.sum({p=> p.peso()})
    }

    method peligrosidad() {
        return (cosas.max({p=> p.peligrosidad()})).peligrosidad()
    }
}

object residuosRadiactivos {
    var peso = 1

    method peso() {
        return peso
    }

    method cambiarPeso(valor) {
        peso = valor
    }

    method peligrosidad() {
        return 200
    }
}

object embalajeDeSeguridad {
    var objeto = contenedorPortuario

    method cambiarObjeto(unObjeto) {
        objeto = unObjeto
    }

    method peso() {
        return objeto.peso()
    }

    method peligrosidad() {
        return objeto.peligrosidad() / 2
    }
}

