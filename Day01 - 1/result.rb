
file = File.open("input.txt","r")
total = 0
file.each_line do |line|
  num = line.scan(/\d/)
  result = (num.first + num.last).to_i
  total += result
end
puts total #55386

file.close
