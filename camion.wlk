object camion {
    const carga = #{}
    
    method cargarObjeto(unObjeto){
        carga.add(unObjeto)
    }

    method descargarObjeto(unObjeto){
        carga.remove(unObjeto)
    }
    

    method pesoTotal(){
        return 1000 + carga.sum({p=> p.peso()})
    }

    method pesoEsPar(){
        return carga.all({p=> p.peso().even()})
    }

    method hayObjetoConPeso(valor){
        return carga.any({p=> p.peso() == valor})
    }

    method objetoConPeligrosidad(valor){
        return carga.find({p=> p.peligrosidad() == valor})
    }

    method listaDePeligrosos(valor){
        return carga.filter({p=> p.peligrosidad() > valor})
    }

    method objetoPeligroso(unObjeto){
        return carga.filter({p=> p.peligrosidad() > unObjeto.peligrosidad()})
    }

    method esPesoExcedido(){
        return self.pesoTotal() > 2500
    }

    method puedeCircularEnRuta(valor){
        return !self.esPesoExcedido() && carga.all({p=> p.peligrosidad() < valor})
    }

    method valorEntre(numMin, numMax) {
        return carga.any({p=> p.peso().between(numMin, numMax)})
    }

    method objetoMasPesado() {
        return carga.max({p=> p.peso()})
    }

}