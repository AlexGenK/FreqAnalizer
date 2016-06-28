#coding utf-8

# Нужно прочесть текст из файла input.txt записанный в формате UTF-8,
# и вывести частотную характеристику (слова и сколько раз они стречаются в тексте)
# в файл output.txt

module Fran

  # старт-метод
  def self.start

    # гем поддержки Unicode
    require 'unicode'

    # открывается входной файл
    f=File.open("input.txt", "r")
    hh={}

    # читаем файл построчно
    while line=f.gets
      # строки бъются на слова
      a=line.split(/[ ,-;!:\.\?\n\t]+/)
      # каждое слово, если оно не пустое, переводится в нижний регистр в формате UTF-8, и обрабатывается функцией add_word_to_hash
      a.each do |item|
        unless item.empty?
          hh=add_word_to_hash(hh, Unicode::downcase(item.force_encoding(Encoding::UTF_8)))
        end
      end
    end

    f.close

    # открывается выходной файл
    f=File.open("output.txt", "w")
    # хеш сортируется по убыванию значений
    hh=hh.sort_by {|key, value| -value}
    # из хэша пары ключ-значение записываются в файл
    hh.each do |key, value|
      f.write("#{value} #{key}\n")
    end
    f.close
    puts "Well done!".green

  end

  # метод добавляет в хэш hh слово ww в качестве ключа, если его там нет, и устанавливает его значение в 1
  # если слово уже есть, значение ключа увеличивается на 1

  protected

  def self.add_word_to_hash hh, ww
    if hh[ww]
      hh[ww]+=1;
    else
      hh[ww]=1;
    end
    return hh
  end

end