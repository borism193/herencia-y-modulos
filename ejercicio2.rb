module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    include Habilidades
    include Alimentacion
    attr_accessor :nombre

    def initialize( nombre )
        @nombre = nombre
    end

end

class Ave < Animal
    include Carnivoro
end

class Mamifero < Animal
    include Caminante
end

class Insecto < Animal
    include Volador
    include Herbivoro
end

class Pinguino < Ave
    include Nadador, Caminante
end

class Paloma < Ave
    include Volador, Caminante
end

class Pato < Ave
    include Volador, Nadador, Caminante
end

class Perro < Mamifero
    include Carnivoro
end

class Gato < Mamifero
    include Carnivoro
end

class Vaca < Mamifero
    include Herbivoro
end

class Mosca < Insecto
    include Carnivoro
end

class Mariposa < Insecto
end

class Abeja < Insecto
end

a = Abeja.new('buzzy')
c = Perro.new('copi-copi')
p = Pinguino.new('pingu')

puts a.volar
puts a.comer

puts c.caminar
puts c.comer

puts p.nadar
puts p.comer