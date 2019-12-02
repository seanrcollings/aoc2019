input = File.read("input.txt")
input_list = input.split("\n").map { |i| i.to_i }

def calc_fuel_requirments(input : Array) : Int32
  # sum = 0
  # input.each do |mass|
  #   sum += mass // 3 - 2
  # end
  # sum
  # sum method
  return input.sum { |mass| mass // 3 - 2 }
end

puts calc_fuel_requirments(input_list)
