
a = []
total = []

# def fileopen
  file = 'triangle.txt'
  if File.file?(file)
    File.open(file) do |f|
      f.each_line do |line|
      a << line.split.map(&:to_i)
      end
    end
  end
# end

# fileopen

a.each_with_index do |x, xi|
  if x.count < 2
    t = x[-1,1]
    total.push(t)
  else
    t = x[-2,1]
    total.push(t)
  end
end

sum = total.flatten!.inject(:+)
puts "Total: #{total} with a sum of #{sum}"

#
# def calculate_total(total)
# end
# calculate_total
# puts total.inject(0, :+)
# total.transpose.map {|x| x.inject(:+)}
# puts total
