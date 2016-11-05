pythagorean_triples = []

(1..1000).each do |a|
  (1..1000).each do |b|
    c = Math.sqrt(a**2+b**2)
    if /\.0$/ =~ c.to_s and a > b
      pythagorean_triples << [a, b, c.to_i]
    end
  end
end

pythagorean_triples.each do |triple|
  if triple[0]+triple[1]+triple[2] == 1000
    puts triple[0]*triple[1]*triple[2]
    break
  end
end

#31875000