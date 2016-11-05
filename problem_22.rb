alphabet_values = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16,
                   q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26 }

file = File.readlines('C:\Users\schulj2\Desktop\names.txt').map do |row|
  row.gsub('"', '').split(',')
end

names = file.flatten.sort

running_sum = 0
names.each_with_index do |name, index|
  sum = 0
  name.split('').each do |char|
    sum += alphabet_values[char.downcase.to_sym]
  end
  running_sum += sum * (index + 1)
end

puts running_sum

#871198282