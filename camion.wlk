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

    method pesoEsPar(carga){
        return carga.all({p=> p.peso().even()})
    }

    method hayObjetoConPeso(valor){
        return carga.any({p=> p.peso() == valor})
    }

    method objetoConPeligrosidad(valor){
        return carga.find({p=> p.peligrosidad() == valor})
    }

    



}