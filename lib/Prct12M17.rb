require "Prct12M17/threads.rb"
 
threads = Threads.new(Mutex.new, ConditionVariable.new, Naranjero.new)
threads.ejecucion.each {|t| t.join}