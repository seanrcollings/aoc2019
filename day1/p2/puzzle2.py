# Requires python3.8
def calc_module_req(mass):
    return 0 if (total := mass // 3 - 2) <= 0 else total + calc_module_req(total)

print(sum([calc_module_req(int(i)) for i in open('input.txt', 'r').read().split("\n")]))