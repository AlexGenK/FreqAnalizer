# encoding: utf-8

# программа выводит в файл числа от 1 до 100. При этом вместо чисел, кратных трем, 
# программа должна выводить слово «Fizz», а вместо чисел, кратных пяти — слово «Buzz». 
# Если число кратно и 3, и 5, то программа должна выводить слово «FizzBuzz»

module Fizzbuzz

  # старт-метод
  def self.start

    # открываем выходной файл
    f=File.open("output.txt", "w")

    # прогоняем цикл от одного до ста
    1.upto 100 do |i|
      fizbuz=''
      fizbuz+='Fizz' if i%3==0
      fizbuz+='Buzz' if i%5==0
      if fizbuz.size>0 then f.puts(fizbuz) else f.puts(i) end
    end

    puts "Well done!".green

  end

end