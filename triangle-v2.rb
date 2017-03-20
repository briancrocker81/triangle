start = Time.now
line_n ||= 0
@total = 0

file = File.open('triangle.txt') do |f|
  f.each_line do |line|
    pos = line.gsub(/\s+/m, ' ').gsub(/^\s+|\s+$/m, '').split(" ")
    val = pos[line_n - 1]
    @total += val.to_i
    line_n += 1
  end
end

puts @total
finish = Time.now
puts "Time elapsed #{(finish - start)*1000} milliseconds"
