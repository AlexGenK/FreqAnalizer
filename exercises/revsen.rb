# Нужно прочесть строку из файла input.txt и записать ее в перевернутом виде
# в файл output.txt

module Revsen

  # старт-метод
  def self.start

    # открываем файл
    f=File.open("input.txt", "r")
    
    rev_line=''

    # читаем строку и тут же ее инвертируем и создаем перевернутую строку
    f.gets.chomp.split(/ /).reverse.each {|item| rev_line+="#{item} "}

    f.close

    # открываем файл и записываем перевернутую строку
    f=File.open("output.txt", "w")
    f.write rev_line
    f.close
    puts "Well done!".green

  end

end