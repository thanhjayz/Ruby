def check(arr)
    if arr[0]+arr[1]<=arr[2]
        return false
    end
    if arr[1]+arr[2]<=arr[0]  
        return false
    end
    if arr[0]+arr[2]<=arr[1]  
        return false
    end
    return true
end

puts "nhap 3 canh cua tam giac: "
arr = Array.new()
for a in 1..3 do
    puts "nhap phan tu thu " +a
    arr[a-1] = gets.chomp
end


p = arr[0]+arr[1]+arr[2]
if (check(arr) == true)
    puts("day la 3 canh cua 1 tam giac")
    puts("chu vi = #{(p/3}")
    puts("dien tich = #{Math.sqrt(  p*(p-a)*(p-b)*(p-c) )}")
else
    puts("day ko la 3 canh cua 1 tam giac")
end
