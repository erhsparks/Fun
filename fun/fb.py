def fb(max, fb_dict = {
        2: "bang",
        3: "fizz",
        5: "buzz",
        7: "boom"
        }):
    """Customizable Fizzbuzz because NONSENSE is the best way to learn!"""

    for num in range(1, max + 1):
        to_print = ""

        for test_num in fb_dict:
            if num % test_num == 0:
                to_print += fb_dict[test_num]

        if len(to_print) == 0:
            to_print = num      # or str(num), if you wanted to do something with it besides printing it to stdout

        print to_print


#####
print fb.__doc__

print "\nWith defaults:"
fb(21)

print "\nWith custom dictionary:"
fb(21, { 3: "foot", 5: "bloot" })
