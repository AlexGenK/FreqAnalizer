module Revsen

  def self.start

    f=File.open("input.txt", "r")
    
    rev_line=''

    f.gets.chomp.split(/ /).reverse.each {|item| rev_line+="#{item} "}

    f.close
    f=File.open("output.txt", "w")
    f.write rev_line
    f.close
    puts "Well done!".green

  end

end