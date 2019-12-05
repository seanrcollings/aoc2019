
def check_pair(input_list, i, j):
    input_list[1], input_list[2] = i, j
    for i in range(0, len(input_list) - 1, 4):
        pointer = input_list[i]
        arg1 = input_list[i + 1]
        arg2 = input_list[i + 2]
        arg3 = input_list[i + 3]
        if pointer == 1:
            input_list[arg3] = input_list[arg1] + input_list[arg2]
        elif pointer == 2:
            input_list[arg3] = input_list[arg1] * input_list[arg2]
        elif pointer == 99:
            break
    return input_list[0]


def main():
    for i in range(100):
        for j in range(100):
            input_file = open("input.txt", "r")
            input_list = [int(i) for i in input_file.read().split(",")]
            input_file.close()
            check = check_pair(input_list, i, j)
            if check == 19690720:
                print("Found at:", i, j)
                print(100 * i * j)

main()