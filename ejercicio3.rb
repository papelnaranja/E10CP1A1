## Ejercicio 3: Herencia
# Se tiene la clase *Vehicle* que recibe como argumento un modelo y un año. El método *engine_start* enciende el vehículo.

class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end

end

class Car < Vehicle
    attr_reader :model
    @@counter = 0  
    def initialize(model, year)
        super
        @@counter += 1
    end
    def self.counter
        @@counter
    end
    def engine_start
        super
        'El motor se ha encendido!'
    end
end

9.times do |x|
   Car.new('modelo_bakan', 2019)
end

miautoregalon = Car.new('soy_mas_bakan', 2020)
p miautoregalon.engine_start
p Car.counter
# Se pide: 
# - Crear una clase *Car* que herede de *Vehicle*

# - El constructor de *Car*, además de heredar las propiedades de *Vehicle*, debe incluir un contador de instancias de *Car*.

# - Crear un método de clase en *Car* que devuelva la cantidad de instancias.

# - El método *engine_start* heredado debe además imprimir *'El motor se ha encendido!'*.

# - Instanciar 10 *Cars*.
# - Consultar la cantidad de instancias generadas de *Car* mediante el método de clase creado.