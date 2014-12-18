 class Naranjero
   VELOCIDAD_CRECIMIENTO = 1.5
   EDAD_PRODUCCION = 3
   EDAD_MUERTE = 10
   NARANJAS_ANIO = 70

   attr_reader :edad, :altura, :contador

   def initialize
     @altura = 0
     @edad = 0
     @contador = 0
   end

   def edad()
     return @edad
   end

   def altura()
     return @altura
   end

   def contador()
     return @contador
   end

   def uno_mas
     @edad += 1
     @altura += VELOCIDAD_CRECIMIENTO
     @contador = (@edad - (EDAD_PRODUCCION - 1)) * ((NARANJAS_ANIO * Math.log(@altura)) + (rand (1..10)))
   end

   def recolectar_una
     if (@edad == EDAD_MUERTE)
       print "El arbol esta muerto\n"
     elsif (@contador > 0)
       @contador -= 1
       print "La naranja esta deliciosa\n"
     else
       print "No hay mas naranjas\n"
     end
   end
 end