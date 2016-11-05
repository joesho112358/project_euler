def next_collatz_sequence_number(number)
  if number %2 ==0
    number/2
  else
    3*number+1
  end
end

def build_collatz_sequence(number)
  if number == 1
    @sequence
  else
    @sequence << next_collatz_sequence_number(number)
    build_collatz_sequence(@sequence.last)
  end
end

longest_chain = []

(1..999999).each do |number|
  @sequence = [number]
  chain = build_collatz_sequence(number)
  if chain.length > longest_chain.length
    longest_chain = chain
  end
end

puts longest_chain[0]

#837799


