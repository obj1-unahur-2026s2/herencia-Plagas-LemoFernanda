// Elementos
class Hogar {
var property mugre
var property confort

method esBueno() = mugre <= confort / 2

method recibirAtaque(unaPlaga) {
mugre += unaPlaga.nivelDeDano()
}
}


object nivelDeHuertas {
var property nivel = 100
}
class Huerta {
var property capacidadDeProduccion

method esBueno() = capacidadDeProduccion > nivelDeHuertas.nivel()

method recibirAtaque(unaPlaga){
capacidadDeProduccion -= unaPlaga.nivelDeDano() * 0.10
if (unaPlaga.transmiteEnfermedades()) {
capacidadDeProduccion -= 10
}
}
}



class Mascota {
  var property nivelDeSalud

  method esBueno() = nivelDeSalud > 250

  method recibirAtaque(unaPlaga) {
  if (unaPlaga.transmiteEnfermedades()) {
  nivelDeSalud -= unaPlaga.nivelDeDano()
  }
  }
}


class Barrio {
  const property elementos = []

  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }

  method quitarElemento(unElemento) {
    elementos.remove(unElemento)
  }

  method cantidadElementosBuenos() = elementos.count({ e => e.esBueno() })

  method cantidadElementosNoBuenos() = elementos.count({ e => not e.esBueno() })

  method esCopado() = self.cantidadElementosBuenos() > self.cantidadElementosNoBuenos()
}