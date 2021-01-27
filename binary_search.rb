#Assumes array is sorted!
def binary_search(array, target)

    midpoint = array[array.length/2]
        
    if(target == midpoint)
        return true
    elsif(array.length <= 1) 
        return false
    elsif(target < midpoint)
        binary_search(array[0..((array.length/2)-1)], target)
    else
        binary_search(array[((array.length/2))..(array.length-1)], target)       
    end
end

#Testing
data_size = 1000000
test_times = 100000
data = (1..data_size).to_a

puts "\n\n\n=================================================="
puts "Total Length of the data array is #{data_size} elements"
puts "Total tests done: #{test_times}"
puts "--------------------------------------------------"

t1 = Time.now
test_times.times do 
    binary_search(data,(1 + rand(data.length)))
end
puts "Binary Search Took #{Time.now - t1} Seconds" 

t2 = Time.now
test_times.times do 
    data.include?(1 + rand(data.length))
end
puts "Ruby's Include? Method Took #{Time.now - t2} Seconds" 
puts "=================================================="

