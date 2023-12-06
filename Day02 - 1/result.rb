file = File.open("input.txt","r")


collect =[]
file.each_line do |line1|
  line = line1.gsub(/[, ]/,",").gsub(/[; : ]/,";").gsub("\n","").split(";")

  test_red = 12
  test_green = 13
  test_blue = 14
  t_blue = 0
  t_red = 0
  t_green = 0
  all = []


  line.each do |ele|
    spt = ele.split(",")
    spt.each.with_index do |e, i|
      t_blue = spt[i-1].to_i if e == "blue"
      t_green = spt[i-1].to_i if e == "green"
      t_red = spt[i-1].to_i if e == "red"


    end
    all << (test_red >= t_red && test_green >= t_green && test_blue >= t_blue)
  end

  collect << line1.gsub(":"," ").split(" ")[1] if all.count(false) == 0




end
puts collect.reduce(0) {|sum,x| sum + x.to_i} #2545
file.close


