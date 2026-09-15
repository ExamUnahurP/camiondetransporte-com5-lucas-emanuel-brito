object camion {
    const carga = #{}
    const tara = 1000
    
    method cargarObjeto(unObjeto){
        carga.add(unObjeto)
    }

    method descargarObjeto(unObjeto){
        carga.remove(unObjeto)
    }

    method pesoTotal(){
        return 1000 + carga.peso()
    }

    method pesoEsPar(carga){
        return carga.peso().even()
    }

    method pesoDeObjeto(peso){
        return carga.any()
    }



}