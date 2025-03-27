//Escribir aqui los objetos

object gimenez{
    var dinero = 300000

    method pagarSueldo(persona){
        dinero = dinero - persona.sueldo()
        persona.cobrarSueldo()
    }

    method fondo(){
        return dinero
    }
}

object galvan{
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method totalCobrado(){}

    method cobrarSueldo(){ 
        if (deuda == 0){
            self.ahorrarTodo()
        } else {
            self.pagarDeuda()
        }
    }

    method pagarDeuda(){
        if (deuda < self.sueldo()){
            var resto = self.sueldo() - deuda
            deuda = 0
            dinero = dinero + resto
        } else {
            deuda = deuda - self.sueldo()
        }
    }

    method ahorrarTodo(){
        dinero = dinero + self.sueldo()
    }

    method gastar(cantidad){
        if (dinero >= cantidad) {
            dinero = dinero - cantidad
        } else {
            var resto = cantidad - dinero 
            deuda = deuda + resto
            dinero = 0
        }
    }

    method deuda(){
        return deuda
    }

    method dinero(){
        return dinero
    }

}

object baigorria{
    var ventas = 0
    var precioPEmpanada = 15
    var totalCobrado = 0

    method sueldo(){
        return ventas * precioPEmpanada
    }

    method vender(_ventas){
        ventas = ventas + _ventas
    }

    method cobrarSueldo(){
        totalCobrado = totalCobrado + self.sueldo()
        ventas = 0
    }

    method totalCobrado(){
        return totalCobrado
    }
}
