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
        ladrillos = valor
    }

    method peso() {
        return 2 * ladrillos
    }

    method peligrosidad() {
        return 2
    }
}

object 


