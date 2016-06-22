# encoding: utf-8
$LOAD_PATH << './exercises/'

ar_exer=['Frequency analyzer',
         'Reverce of the sentence']

puts
ar_exer.each_with_index {|item, index| puts "#{index} - #{item}"}
puts
print "Select exercice: "
case gets.to_i
  when 0 
    require "fran.rb"
    Fran.start
  else
    print "Incorrect input!"
end