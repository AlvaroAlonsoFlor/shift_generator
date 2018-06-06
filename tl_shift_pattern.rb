
require("pry-byebug")
require_relative("shift_generator") #Working

def create_shift #creating a shift, probably we'll need a proc
  new_shift = ShiftGen.new.shifts
end



def tl_filter(roster) #We'll pass create_shift

  #At least 2 weekends off
  #First day Monday last day Sunday
  #We need index 5 and 6 be off
  #weeks
  two_weekends = false

  while two_weekends == false
    roster # We call the function or proc
    weekends = 0

    for weeks in roster

      if weeks[5] == "O" && weeks[6] == "O"
        weekends += 1
      end

    end

    if weekends >= 2
      two_weekends = true
    else
      roster # We call a different roster
    end

  end

  return roster

end

binding.pry

tl_filter(create_shift)
tl_filter(ShiftGen.new)

  #starting with a late
  #finishing with early shift?
