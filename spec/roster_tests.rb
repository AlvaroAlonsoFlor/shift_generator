require_relative("../shift_generator")

def create_shift #creating a shift, probably we'll need a proc
  new_shift = ShiftGen.new.shifts
end

#This tests work only at the pry console

def good_shift
  good_shift = [["E", "E", "E", "L", "L", "O", "O"],
   ["E", "E", "E", "L", "L", "O", "O"],
   ["O", "E", "L", "E", "O", "E", "E"],
   ["E", "O", "E", "E", "O", "L", "L"]]
end

 bad_shift = [["L", "O", "L", "L", "O", "L", "E"],
 ["E", "O", "L", "E", "O", "E", "L"],
 ["L", "L", "O", "O", "L", "L", "E"],
 ["L", "L", "L", "L", "O", "L", "O"]]
