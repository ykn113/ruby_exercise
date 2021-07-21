puts "数字を入力してください"
number = gets.to_i

puts "結果は..."

if number % 3 ==0 && number % 5 ==0
    puts "FizzBuzz"
elsif number % 3 ==0
    puts "Fizz"
elsif number % 5 ==0
    puts "Buzz"
else
    puts number
end