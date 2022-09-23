
puts "nhap so phan tu: "
n = gets.chomp
arr = Array.new(n)
sum = 0
for a in 1..(n-1) do
    puts "nhap phan tu thu " +a
    arr[a-1] = gets.chomp
    sum += arr[a-1]
end
puts "max = #{arr.max()} "
puts "min = #{arr.min()} "
puts "avg = #{sum/=n} "