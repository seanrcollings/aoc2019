input = File.read("input.txt")
input_list = input.split(",").map { |i| i.to_i }

def run_all_opcodes(input_list : Array(Int32))
  done : Bool = false
  start : Int32 = 0
  while !done
    done = true if input_list[start] == 99
    if input_list[start] == 1
      input_list[input_list[start + 3]] = input_list[input_list[start + 1]] + input_list[input_list[start + 2]]
    elsif input_list[start] == 2
      input_list[input_list[start + 3]] = input_list[input_list[start + 1]] * input_list[input_list[start + 2]]
    end
    start += 4
  end
end

run_all_opcodes input_list
puts input_list[0]
