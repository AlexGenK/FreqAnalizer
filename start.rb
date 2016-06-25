# encoding: utf-8

require 'colorize'
$LOAD_PATH << './exercises/'

ar_exer=['Frequency analyzer',
         'Reverce of the sentence']

puts "\n"+"-"*20+" Exercises "+"-"*20
ar_exer.each_with_index {|item, index| puts "#{index} - #{item}"}
puts "-"*51+"\n\n"
print "Select exercice: "
case gets.chomp
  when "0" 
    require "fran.rb"
    Fran.start
  else
    puts "Incorrect input!".white.on_red
end