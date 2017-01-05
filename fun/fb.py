def fb(max):
    fb_dict = {
        2: "bang",
        3: "fizz",
        5: "buzz",
        7: "boom"
        }

    for num in range(1, max + 1):
        to_print = ""

        for test_num in fb_dict:
            if num % test_num == 0:
                to_print += fb_dict[test_num]

        if len(to_print) == 0:
            print str(num)
        else:
            print to_print



fb(21)
