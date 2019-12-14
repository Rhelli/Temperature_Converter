# frozen_string_literal: true

puts 'Reading Celsius temperature value from external data file...'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts 'Saving result to output file "temp.out"'
fh = File.new('temp.out', 'w')
fh.puts fahrenheit
fh.close
puts 'Your Celsius temperature value has been read and written to "temp.out"'
