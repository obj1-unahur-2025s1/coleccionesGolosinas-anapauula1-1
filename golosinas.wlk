// PRIMERA PARTE
object frutilla {}
object chocolate {}
object vainilla {}
object limon {}
object naranja {}

object bombon {
  var property peso = 15
  method precio() = 5
  method sabor() = frutilla
  method contieneGluten() = false

  method recibeMordisco(){
    peso = peso - (peso * 0.8) - 1
  }
}
object alfajor {
  var property peso = 300
  method precio() = 12
  method sabor() = chocolate
  method contieneGluten() = true
  
  method recibeMordisco(){
    // porque dice pierde que seria
    // el peso total - lo que le descuenta
    peso = peso - peso * 0.8
  }
}
object caramelo {
  var property peso = 5
  method precio() = 1
  method sabor() = frutilla
  method contieneGluten() = false

  method recibeMordisco(){
    peso = peso - 1
  }
}
object chupetin {
  var property peso =  7
  method precio() = 2
  method sabor() = naranja
  method contieneGluten() = false

  method recibeMordisco(){
    peso = peso -  if(peso > 2) 0.1 else 0
  }
}
object oblea {
  var property peso = 250 
  method precio() = 5
  method sabor() = vainilla
  method contieneGluten() = true

  method recibeMordisco(){
    if(peso > 70){
      peso = peso - 0.5
    }
    else{
      peso = peso - 0.25
    }
  }
}
object chocolatin {
  var property peso = 100
  var property mordiscos = 0 

  method pesoParaElPrecio() = 10
  method precio() = 0.50 * self.pesoParaElPrecio()
  method sabor() = chocolate
  method contieneGluten() = true

  method recibeMordisco(){
    mordiscos += 1
    peso = peso - 2 * mordiscos
  }
}
object golosinaBañada {
  var property golosinaDentro = chocolatin
  var property mordiscos = 0 
  var property pesoBañado = 4 
  method peso() =  golosinaDentro.peso() + pesoBañado
  method precio() = golosinaDentro.precio() + 2
  method sabor() = golosinaDentro.sabor()
  method contieneGluten() = golosinaDentro.contieneGluten()

  method recibeMordisco(){
    mordiscos += 1
    golosinaDentro.recibeMordisco()
    pesoBañado = pesoBañado - 2
  }
}
object pastillaT {
  var property peso = 5 
  var esLibreDeGluten = true
  const sabores = [frutilla,chocolate,naranja] 
  var saborActual = 0

  method tieneGluten() = esLibreDeGluten
  method ponerGluten(){esLibreDeGluten = false}
  method esLibreDeGlutenPastilla(){esLibreDeGluten = true}

  method precio() = if(esLibreDeGluten) 7 else 10

  method recibeMordisco(){
    saborActual +=1
  }
}