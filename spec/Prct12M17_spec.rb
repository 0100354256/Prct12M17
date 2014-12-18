require "Prct12M17"
require "spec_helper"

describe Naranjero do
 before :each do
   @naranjero = Naranjero.new
 end

 describe "Productor" do
   it "# Edad 1" do
     @naranjero.uno_mas
     expect(@naranjero.edad).to eq(1)
     expect(@naranjero.altura).to eq(Naranjero::VELOCIDAD_CRECIMIENTO)
     expect(@naranjero.contador < 0).to be(true)
   end

   it "# Edad 3" do
     @naranjero.uno_mas
     @naranjero.uno_mas
     @naranjero.uno_mas
     expect(@naranjero.edad).to eq(3)
     expect(@naranjero.altura).to eq(Naranjero::VELOCIDAD_CRECIMIENTO * 3)
     expect(@naranjero.contador > 0).to be(true)
   end
 end

 describe "Consumidor" do
   it "# Edad 3 - Recoleccion" do
     @naranjero.uno_mas
     @naranjero.uno_mas
     @naranjero.uno_mas

     contador = @naranjero.contador

     @naranjero.recolectar_una
     expect(contador - 1).to eq(@naranjero.contador())
   end
 end
end