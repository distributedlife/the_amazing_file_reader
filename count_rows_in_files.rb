dir = ARGV[0]

def count_rows filename
  counter = 1
  file = File.new(filename, "r")
  while (line = file.gets)
    counter = counter + 1
  end
  file.close

  counter
end

counter = 0
Dir["#{dir}/**"].each do |filename|
  counter += count_rows(filename)
end

puts counter
