def measure(a = 0) #Measure method where parameter a is how many times the process should be run
 if a > 0
  b = Time.now #Stores starting time
  a.times do yield end #Runs the process based on the inputted block
  elapsed_time = Time.now - b #Computes time taken to finish processing the inputted block
  c = elapsed_time / a #Finds the average time needed for each element in the block
  c #Returns average time
 else
  b = Time.now #Stores starting time
  yield #Pass block in once
  elapsed_time = Time.now - b #Finds time taken to complete block 
  elapsed_time #Returns how much time was needed to complete the task
  end
end