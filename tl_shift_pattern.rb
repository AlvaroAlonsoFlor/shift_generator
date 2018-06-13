
require_relative("spec/roster_tests")

require("pry-byebug")

def tl_filter

  new_shift = ShiftGen.new.shifts

  weekends = 0

  for weeks in new_shift

    if weeks[5] == "O" && weeks[6] == "O"
      weekends += 1
    end

  end

  if weekends >= 2

    puts "Roster found, #{weekends} weekends found"
    new_shift

  else
    puts "Roster not valid, #{weekends} weekends found"
    tl_filter
  end


end

binding.pry

tl_filter
