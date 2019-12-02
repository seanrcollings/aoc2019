# Requires python3.8
print(sum([(lambda a:lambda v:a(a,v))(lambda s, mass: 0 if (total := mass // 3 - 2) <= 0 else total + s(s, total))(int(i)) for i in open('input.txt', 'r').read().split("\n")]))