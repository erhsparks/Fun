def fb(max, fb_dict = {
         2 => "bang",
         3 => "fizz",
         5 => "buzz",
         7 => "boom"
       })
  (1..max).each do |num|
    to_print = ""

    fb_dict.each do |test_num, fb_string|
      to_print += fb_string if num % test_num == 0
    end

    puts to_print.empty? ? num.to_s : to_print
  end
end



fb(21)
fb(21, { 3 => "foot", 7 => "bloot" })
