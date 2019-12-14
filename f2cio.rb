# frozen_string_literal: true

puts 'Reading Fahrenheit temperature value from external data file...'
num = File.read('temp.dat')
fahrenheit = num.to_i
celsius = (fahrenheit - 32) * 5 / 9
puts 'Saving result to output file "temp.out"'
fh = File.new('temp.out', 'w')
fh.puts celsius
fh.close
puts 'Your Celsius temperature value has been read and written to "temp.out"'
