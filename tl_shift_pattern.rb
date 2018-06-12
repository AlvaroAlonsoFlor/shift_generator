
require_relative("spec/roster_tests")

require("pry-byebug")

def tl_filter #We'll pass create_shift

  #At least 2 weekends off
  #First day Monday last day Sunday
  #We need index 5 and 6 be off
  #weeks
  new_shift = ShiftGen.new.shifts

  two_weekends = false

  while two_weekends == false

    weekends = 0

    for weeks in new_shift

      if weeks[5] == "O" && weeks[6] == "O"
        weekends += 1
      end

    end

    if weekends >= 2
      two_weekends = true
      puts "Roster found, #{weekends} weekends found"

    else
      puts "Roster not valid, just #{weekends} weekends"
      tl_filter
      break
      #tl_filter(create_shift) Sometimes I get this error:
      #stack level too deep (SystemStackError)
      #due to too many attempts
    end

  end

  return new_shift

end

tl_filter

binding.pry

#For the old method with parameters

tl_filter(good_shift)

tl_filter(bad_shift)






  #starting with a late
  #finishing with early shift?
