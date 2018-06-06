
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

binding.pry




  #counter = 0
  #for weeks in shifts
    #if counter == 4
      #return true
    #end

    #if counter != 2
      #counter = 0
    #end

    #for days in weeks

      #if shifts[weeks][0] || shifts[weeks][6] == "O"
          #counter += 1

      #end
    #end
  end

  #starting with a late
  #finishing with early shift?
end
