ar_exer=['Frequency analyzer',
         'Reverce of the sentence']

puts
ar_exer.each_with_index {|item, index| puts "#{index} - #{item}"}
puts
print "Select exercice: "
n=gets