file = File.open("input.txt","r")

result = []
file.each_line do |line|
  line = line.gsub(/[:|]/,",").split(",")
    arr1 = line[1].split(" ")
    arr2 = line[2].split(" ")
    
    win_time = (arr1 & arr2).count
    
  if win_time >= 2
    result << 2 ** (win_time - 1)
  else
    result << win_time
  end

end
puts result.reduce(0) {|sum, x| sum + x } #23441
file.close
