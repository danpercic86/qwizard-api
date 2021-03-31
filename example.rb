class FizzBuzz
  @@fizz_count = 0
  @@buzz_count = 0
  @n = 0

  def initialize(n)
    @n = n
  end

  def fizz_count
    @@fizz_count
  end

  def buzz_count
    @@buzz_count
  end

  def play
    i = 1
    while i <= @n
      if i % 3 == 0 && i % 5 == 0
        puts 'fizzbuzz'
      elsif i % 3 == 0
        puts 'fizz'
        @@fizz_count = @@fizz_count + 1
      elsif i % 5 == 0
        puts 'buzz'
        @@buzz_count = @@buzz_count + 1
      else
        puts i
      end
      i = i + 1
    end
  end

  def reset_count
    @@fizz_count = 0
    @@buzz_count = 0
  end
end

fizzbuzz = FizzBuzz.new(16)
fizzbuzz.play

fizzbuzz2 = FizzBuzz.new(32)
fizzbuzz2.play

puts 'fizz count:'
puts  fizzbuzz.fizz_count

puts 'buzz count:'
puts  fizzbuzz.buzz_count