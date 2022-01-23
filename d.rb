# D - Dance
N = gets.chomp.to_i
fun =[]
N.times do |i|
  fun << gets.chomp.split.map(&:to_i)
end

pair =  (1..2*N).to_a.combination(2).to_a

check = {}
fun.flatten.each_with_index do |c,i|
  check[ pair[i] ] = c
end

STDERR.puts check
member = (1..N*2).to_a
combi = member.combination(N).to_a

sum = []
max = 0
combi.each do |c|
  rest = member - c
  out = [c,rest].transpose
  out.each do |o|
    sum << check[o.sort]
  end
  g = 0
  sum.compact.each do |s|
    g ^= s
  end
  if g >= max then
    max = g
  end

end
puts max