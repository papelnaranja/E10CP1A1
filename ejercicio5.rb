
# ## Ejercicio 5: Mixins.
# Transformar la clase *Herviboro* en un módulo. Implementar el módulo en la clase *Conejo* mediante *Mixin* para poder acceder al método *dieta* desde la instancia. Finalmente imprimir la definición de Hervíboro.

module Herviboro
  DEFINIR = 'Sólo me alimento de vegetales!'
  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  include Herviboro
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
p conejo.saludar
p conejo.dieta
p Herviboro::DEFINIR


# #### Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante Herencia de Herencia?
# Mayor manejo del código 