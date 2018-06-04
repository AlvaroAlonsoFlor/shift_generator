
require_relative("shift_generator") #Working

def create_shift #creating a shift
  new_shift = ShiftGen.new.shifts
end

def tl_filter(shifts) #We'll pass create_shift

  #At least 2 weekends off
  #First day Sunday last day Sat
  #We need index 0 and 6 be off in two consecutive
  #weeks
  shifts
  counter = 0
  for weeks in shifts
    if counter == 4
      return true
    end

    if counter != 2
      counter = 0
    end

    for days in weeks

      if shifts[weeks][0] || shifts[weeks][6] == "O"
          counter += 1

      end
    end
  end

  #starting with a late
  #finishing with early shift?
end
