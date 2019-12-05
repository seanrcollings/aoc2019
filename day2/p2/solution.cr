input = File.read("input.txt")
input_list = input.split(",").map { |i| i.to_i }

def pair_check(input_list : Array(Int32), noun : Int32, verb : Int32)
  current_memory = input_list.map { |i| i }
  current_memory[1], current_memory[2] = noun, verb
  done, i = false, 0
  while !done
    pointer = current_memory[i]
    arg1 = current_memory[i + 1]
    arg2 = current_memory[i + 2]
    arg3 = current_memory[i + 3]
    done = pointer == 99

    if pointer == 1
      current_memory[arg3] = current_memory[arg1] + current_memory[arg2]
    elsif pointer == 2
      current_memory[arg3] = current_memory[arg1] * current_memory[arg2]
    end
    i += 4
  end
  return current_memory[0]
end

def find_correct_pair(input_list)
  array = (1..100).to_a
  array.each do |i|
    array.each do |j|
      check = pair_check(input_list, i, j)
      puts 100 * i * j if check == 19690720
    end
  end
end

find_correct_pair(input_list)
