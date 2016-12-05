
beginning_time = Time.now
a = []
total = []

file = 'triangle.txt'
if File.file?(file)
  File.open(file) do |f|
    f.each_line do |line|
    a << line.split.map(&:to_i)
    end
  end
end

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
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
