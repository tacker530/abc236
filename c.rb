# C - Route Map
N,M = gets.chomp.split.map(&:to_i)
station = gets.chomp.split
express = gets.chomp.split

STDERR.puts "#{N} #{M} #{station} #{express}"

check = {}

express.each do |e|
  check[e] = true
end

station.each do |s|
  if check.key?(s) then
    puts "Yes"
  else
    puts "No"
  end
end