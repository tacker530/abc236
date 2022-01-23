# B - Who is missing?
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

STDERR.puts "#{N} #{A}"

all = {}
A.each do |i|
  all[i] ||= 0
  all[i]  += 1
end

STDERR.puts all
puts all.key( 3 )
