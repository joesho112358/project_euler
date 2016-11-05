number_of_letters = {"one" => 3, "two" => 3, "three" => 5, "four" => 4, "five" => 4, "six" => 3, "seven" => 5, "eight" => 5, "nine" => 4, "ten" => 3,
               "eleven" => 6, "twelve" => 6, "thirteen" => 8, "fourteen" => 8, "fifteen" => 7, "sixteen" => 7, "seventeen" => 9, "eighteen" => 8, "nineteen" => 8,
               "twenty" => 6, "thirty" => 6, "forty" => 5, "fifty" => 5, "sixty" => 5, "seventy" => 7, "eighty" => 6, "ninety" => 6, "one hundred" => 10,
               "two hundred" => 10, "three hundred" => 12, "four hundred" => 11, "five hundred" => 11,"six hundred" => 10, "seven hundred" => 12,
               "eight hundred" => 12, "nine hundred" => 11,"one thousand" => 11, "and" => 3}

@number_to_words = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven",
                   "8" => "eight", "9" => "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen",
                   "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen",
                   "19" => "nineteen", "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty",
                   "70" => "seventy", "80" => "eighty", "90" => "ninety", "100" => "one hundred", "200" => "two hundred",
                   "300" => "three hundred", "400" => "four hundred", "500" => "five hundred", "600" => "six hundred",
                   "700" => "seven hundred", "800" => "eight hundred", "900" => "nine hundred", "1000" => "one thousand"}

def get_words(number)
  words = []
  if number <= 20 or [30, 40, 50, 60, 70, 80, 90, 100, 1000].include? number
    words << @number_to_words[number.to_s]
  elsif number <= 100
    words << @number_to_words[number.to_s[0] + "0"]
    words << @number_to_words[number.to_s[1]]
  elsif number <= 1000
    words << @number_to_words[number.to_s[0] + "00"]
    words << "and" unless (number.to_s[1] + "0") == "00" and number.to_s[2] == "0"
    if number.to_s[1] == "1"
      words << @number_to_words[number.to_s[1] + number.to_s[2]]
    else
      words << @number_to_words[number.to_s[1] + "0"] unless (number.to_s[1] + "0") == "00"
      words << @number_to_words[number.to_s[2]] unless number.to_s[2] == "0"
    end
  end
  words
end

counter = 0
(1..1000).each do |number|
  words = get_words(number)
  words.each do |word|
    counter += number_of_letters[word]
  end
end


puts counter

#21124