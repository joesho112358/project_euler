def total_days
  total = 0
  (1901..2000).each do |number|
    if number%4 == 0
      total += 366
    else
      total += 365
    end
  end
  total
end

def sundays(first_day, days)
  sundays = [first_day]
  begin
    sundays << sundays.last+7
  end until sundays.last+7 > days
  sundays
end

def first_days_of_months(starting_day, number_of_days)
  if number_of_days == 365
    [starting_day+1, starting_day+32, starting_day+60, starting_day+91, starting_day+121, starting_day+152, starting_day+182,
     starting_day+213, starting_day+244, starting_day+274, starting_day+305, starting_day+335]
  else
    [starting_day+1, starting_day+32, starting_day+61, starting_day+92, starting_day+122, starting_day+153, starting_day+183,
     starting_day+214, starting_day+245, starting_day+275, starting_day+306, starting_day+336]
  end
end

def get_first_day_of_every_month
  first_days = []
  starting_day = 0
  (1901..2000).each do |number|
    if number%4 == 0
      first_days << first_days_of_months(starting_day, 366)
      starting_day += 366
    else
      first_days << first_days_of_months(starting_day, 365)
      starting_day += 365
    end
  end
  first_days
end

sundays = sundays(6, total_days)
first_days_of_month = get_first_day_of_every_month

puts (sundays & first_days_of_month.flatten).count

#171