f=File.open("input.txt", "r")

hh={}

def add_word_to_hash hh, ww
  if hh[ww]
    hh[ww]+=1;
  else
    hh[ww]=1;
  end
  return hh
end

while line=f.gets
  a=line.split(/[ .,-;!?:\n]+/)
  a.each do |item|
    hh=add_word_to_hash hh, item
  end
end

f.close
f=File.open("output.txt", "w")

hh=hh.sort_by {|key, value| -value}
hh.each do |key, value|
  f.write("#{value} #{key}\n")
end
f.close
puts "All right!"