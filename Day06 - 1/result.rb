file = File.open("input.txt","r")

  arr = []
file.each_line do |line|
  line = line.split(" ")
  arr << line
end

  time_arr =[]
  times = 0 
t_arr = arr.transpose
t_arr.each do |ele|
  result = []
  (0..ele.first.to_i).each do |x|
    result << ((ele.first.to_i - x) * x > ele.last.to_i)
    times = result.count(true)
  end
  time_arr << times

end
  time_arr.shift
puts time_arr.reduce(:*) #1710720

file.close
