file = File.open("input.txt","r")


max = []
all = []
file.each_line do |line1|
  line = line1.gsub(/[, ]/,",").gsub(/[; : ]/,";").gsub("\n","").split(";")

  t_blue = []
  t_red = []
  t_green = []

  line.each do |ele|
    spt = ele.split(",")
    spt.each.with_index do |e, i|
      t_blue << spt[i-1].to_i if e == "blue"
      t_green << spt[i-1].to_i if e == "green"
      t_red << spt[i-1].to_i if e == "red"
    end

  end
  max = [t_blue.max, t_red.max, t_green.max]
  all << max.reduce(:*)

end
puts all.sum #78111

file.close


