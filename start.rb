# encoding: utf-8

# сборник задач для программистов

# гем, обеспечивающий вывод в консоли в цвете
require 'colorize'

# путь загрузки модулей. один модуль - одна задача
$LOAD_PATH << './exercises/'

# список задач
ar_exer=['Frequency analyzer',
         'Reverce of the sentence']

# вывод списка задач и выбор нужной задачи
puts "\n"+"-"*20+" Exercises "+"-"*20
ar_exer.each_with_index {|item, index| puts "#{index} - #{item}"}
puts "-"*51+"\n\n"
print "Select exercice: "

# запуск соответствующего модуля или вывод сообщения об ошибке
case gets.chomp
  when "0" 
    require "fran.rb"
    Fran.start
  else
    puts "Incorrect input!".white.on_red
end