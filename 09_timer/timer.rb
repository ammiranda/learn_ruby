class Timer
  
  attr_accessor :seconds #Allows access to seconds hash
  
  def initialize
   @seconds = 0 #Sets starting time at 0
  end
  
  def time_string
    time_array = [] 
    seconds = @seconds % 60 #Finds number of seconds between 0 and 60
    minutes = (@seconds / 60) % 60 #Finds number of minutes between 0 and 60
    hours = @seconds / 3600 #Finds number of hours (no need for modulo)
    
    time_array = "#{format(hours)}:#{format(minutes)}:#{format(seconds)}"
   end
   
  def format(time_unit) #Ternary operator to add zeros to displayed time as needed
      (time_unit).to_s.length > 1 ? time_unit.to_s : "0" + time_unit.to_s
  end
  
end