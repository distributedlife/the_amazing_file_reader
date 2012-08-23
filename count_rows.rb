filename = ARGV[0]

def count_rows filename
  counter = 1
  file = File.new(filename, "r")
  while (line = file.gets)
    counter = counter + 1
  end
  file.close

  counter
end


puts count_rows(filename)
