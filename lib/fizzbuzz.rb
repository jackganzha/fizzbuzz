class FizzBuzz

  def fizzbuzz(number)
    result = ''
    result += 'fizz'      if number % 3 == 0
    result += 'buzz'      if number % 5 == 0
    result = number.to_s  if result.empty?
    return result
  end

  def fizzbuzz_each(range)
    range.each do |n|
      puts fizzbuzz(n)
    end
  end

end

