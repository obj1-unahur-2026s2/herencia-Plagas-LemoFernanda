import elementos.*
// Plaga
class Plaga {
var property poblacion

method nivelDeDano()

method transmiteEnfermedades() = poblacion >= 10
 method efectoAtaque() {
 poblacion = poblacion * 1.10
 }

method atacar(unElemento){
unElemento.recibirAtaque(self)
self.efectoAtaque()
}
}

class Cucarachas inherits Plaga {
var property pesoPromedio

override method nivelDeDano() = poblacion / 2
override method transmiteEnfermedades() = super() and pesoPromedio >= 10

override method efectoAtaque() {
super()
pesoPromedio += 2
}
}

class Pulgas inherits Plaga {
override method nivelDeDano() = poblacion * 2
}

class Garrapatas inherits Pulgas {
override method efectoAtaque() {
poblacion = poblacion * 1.20
}
}

class Mosquitos inherits Plaga {
override method nivelDeDano() = poblacion

override method transmiteEnfermedades() = super() and (poblacion % 3 == 0)
}