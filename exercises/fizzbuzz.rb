module Fizzbuzz

  def self.start

    f=File.open("output.txt", "w")

    1.upto 100 do |i|
      fizbuz=''
      fizbuz+='Fizz' if i%3==0
      fizbuz+='Buzz' if i%5==0
      if fizbuz.size>0 then f.puts(fizbuz) else f.puts(i) end
    end

    puts "Well done!".green

  end

end