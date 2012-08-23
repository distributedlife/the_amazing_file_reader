require "benchmark"

# usage: measure_whatevz.rb number_of_loops thing_under_test

loop_de_loop = ARGV[0].to_i
tut = ARGV[1]
times = []

loop_de_loop.times do |i|
  t = Benchmark.measure do |bm|
    `#{tut}`
  end

  puts t.real
  times << t.real
end

times.sort!

#min duration
puts "min duration"
puts times.first

#max duration
puts "max duration"
puts times.last

#mean duration

#stdev

#variance
