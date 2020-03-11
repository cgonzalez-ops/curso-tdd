#!/usr/bin/env ruby
# coding: utf-8

lines = File.open(ARGV[0],'r').readlines

first_line = lines.shift

if first_line.size > 50
  puts "La primera línea tiene más de 50 caracteres"
  exit 255
end

second_line = lines.shift

if second_line == '\n'
  puts "La segunda línea debe estar vacía"
  exit 255
end


bad_lines = {}

lines.each_with_index do |line,i|
  bad_lines[i+2] = line
end

if bad_lines.keys
  puts "Todas estas líneas tienen más de 80 caracteres", bad_lines.keys.join(", ")
  exit 255
end



