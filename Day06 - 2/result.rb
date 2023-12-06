file = File.open("input.txt","r")

  arr = []
file.each_line do |line|
  line = line.gsub(" ","").split(":")
  arr << line
end

t_arr = arr.transpose

result = 0
(0..t_arr[1].first.to_i).each do |x|
  result += 1 if ((t_arr[1].first.to_i - x) * x > t_arr[1].last.to_i)
end
puts result #35349468

file.close
