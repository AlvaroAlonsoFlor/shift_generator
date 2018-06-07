require_relative("../shift_generator")

def create_shift #creating a shift, probably we'll need a proc
  new_shift = ShiftGen.new.shifts
end


good_shift = [["E", "O", "E", "L", "L", "L", "O"],
 ["O", "E", "E", "L", "L", "E", "O"],
 ["O", "E", "L", "E", "O", "E", "E"],
 ["E", "L", "E", "E", "O", "O", "L"]]

 bad_shift = [["L", "O", "L", "L", "O", "L", "E"],
 ["E", "O", "L", "E", "O", "E", "L"],
 ["L", "L", "O", "O", "L", "L", "E"],
 ["L", "L", "L", "L", "O", "L", "O"]]
