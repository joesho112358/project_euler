a0 = 0
a1 = 1
fibonacci_sequence = [a0, a1]

begin
  fibonacci_sequence.reverse!
  fibonacci_sequence.unshift fibonacci_sequence[0]+fibonacci_sequence[1]
  fibonacci_sequence.reverse!
end until /\d{1000}/ =~ fibonacci_sequence.last.to_s

puts fibonacci_sequence.index fibonacci_sequence.last