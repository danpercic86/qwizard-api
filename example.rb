class FizzBuzz
  @number = 0
  # attr_reader :buzz_count
  # attr_writer :buzz_count
  class << self
    attr_accessor :buzz_count, :fizz_count
  end

  def initialize(number)
    @number = number
  end

  # rubocop:disable Metrics/MethodLength
  def play
    i = 1
    while i <= @number
      if (i % 3).zero? && (i % 5).zero?
        puts 'fizzbuzz'
        FizzBuzz.increment
      elsif (i % 3).zero?
        puts 'fizz'
        FizzBuzz.increment_fizz
      elsif (i % 5).zero?
        puts 'buzz'
        FizzBuzz.increment_buzz
      else
        puts i
      end
      i += 1
    end
  end

  # rubocop:enable Metrics/MethodLength

  def self.increment_buzz
    FizzBuzz.buzz_count = (FizzBuzz.buzz_count || 0) + 1
  end

  def self.increment_fizz
    FizzBuzz.fizz_count = (FizzBuzz.fizz_count || 0) + 1
  end

  def self.increment
    FizzBuzz.increment_buzz
    FizzBuzz.increment_fizz
  end

  # def self.buzz_count
  #   @buzz_count
  # end
  #
  # def self.buzz_count=(val)
  #   @buzz_count = val
  # end

  def self.reset_count
    FizzBuzz.fizz_count = 0
    FizzBuzz.buzz_count = 0
  end
end

fizzbuzz = FizzBuzz.new(16)
fizzbuzz.play

fizzbuzz2 = FizzBuzz.new(32)
fizzbuzz2.play

puts 'fizz count:'
puts FizzBuzz.fizz_count

puts 'buzz count:'
puts FizzBuzz.buzz_count
