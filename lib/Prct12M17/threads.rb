require "Prct12M17/naranjero.rb"

Thread.abort_on_exception = true

class Threads
  attr_reader :naranjero
 
  def initialize(mutex, cv, naranjero)
    @mutex = mutex
    @cv = cv
    @naranjero = naranjero
  end
 
  def ejecucion
    consumidor = Thread.new do
      until (@naranjero.edad == Naranjero::EDAD_MUERTE)
        tiempo = rand(0..5)
        print "Orange picker going to sleep for #{tiempo}\n"
        sleep(tiempo)
        print "Orange picker woke up after sleeping for #{tiempo}\n"

        @mutex.synchronize do
          @naranjero.recolectar_una
          print "Orange picker waiting patiently...\n"
          if (@naranjero.edad < Naranjero::EDAD_MUERTE)
            @cv.wait(@mutex)
          end
        end
      end
    end
 
    productor = Thread.new do
      until (@naranjero.edad == Naranjero::EDAD_MUERTE)
        tiempo = rand(0..5)
        print "Age increaser going to sleep for #{tiempo}\n"
        sleep(tiempo)
        print "Age increaser woke up after sleeping for #{tiempo}\n"

        @mutex.synchronize do
          @naranjero.uno_mas
          print "Age increaser increased the age\n"
          @cv.signal
        end
      end
    end

    [consumidor, productor]
  end
end