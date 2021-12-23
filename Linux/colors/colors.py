import sys
for i in range(0, 16):
    for j in range(0, 16):
        code = str(j)
        sys.stdout.write(u"\u001b[48;5;" + str(i) + "m" + u"\u001b[38;5;" + str(j) + "m " + code.ljust(4))
    print u"\u001b[0m"
for i in range(0, 16):
    for j in range(0, 16):
        code = str(i * 16 + j)
        sys.stdout.write(u"\u001b[48;5;" + code + "m " + code.ljust(4))
    print u"\u001b[0m"
for r in range(0, 6):
    for g in range(0, 6):
        for b in range(0, 6):
            code = str(r * 36 + g * 6 + b + 16)
            sys.stdout.write(u"\u001b[48;5;" + code + "m " + code.ljust(4))
        print u"\u001b[0m"
    print u"\u001b[0m"
for i in range(0, 23):
    code = str(i + 232)
    sys.stdout.write(u"\u001b[48;5;" + code + "m " + code.ljust(4))
print u"\u001b[0m"
for i in range(1, len(sys.argv)):
    code = sys.argv[i]
    sys.stdout.write(u"\u001b[48;5;" + code + "m " + code.ljust(4))
print u"\u001b[0m"
