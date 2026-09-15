object knightRider {
    method peso(){
        return 500
    }

    method peligrosidad(){
        return 10
    }
}

object bumblebee {
    var estado = "auto"
    method peso(){
        return 800
    }

    method peligrosidad(){
        if estado == "auto"{
            return 15
        } if else estado == "robot"{
            return 30
        }
    }

    method cambiarEstado(unEstado) {
        estado = "unEstado"
    }
}