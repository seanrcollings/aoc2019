input = File.read("input.txt")
input_list = input.split("\n").map { |i| i.to_i }

def calc_all_fuel_reqs(input : Array) : Int32
  return input.sum { |mass| calculate_module_fuel_req(mass) }
end

def calculate_module_fuel_req(mass : Int32, total : Int32 = 0) : Int32
  next_mass : Int32 = mass // 3 - 2
  if next_mass <= 0
    return total
  else
    total += next_mass
    return calculate_module_fuel_req(next_mass, total)
  end
end

puts calc_all_fuel_reqs(input_list)
