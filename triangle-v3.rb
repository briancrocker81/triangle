start = Time.now
puts IO.read("triangle.txt").split("\n").reduce(0){|sum,line| (line.split(' ')[-2] || line).to_i + sum}
finish = Time.now
puts "Time elapsed #{(finish - start)*1000} milliseconds"
