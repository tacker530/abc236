# a
S = gets.chomp.chars
a,b = gets.chomp.split.map(&:to_i)
STDERR.puts "#{S} #{a} #{b}"
str_a = S[a-1]
str_b = S[b-1]

S.each_with_index do |s,i|
  if i == a - 1 then
    print str_b
  elsif i == b - 1 then
    print str_a
  else
    print s
  end
end