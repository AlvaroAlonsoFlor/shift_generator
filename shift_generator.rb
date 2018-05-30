class ShiftGen
  attr_reader :shifts

  def initialize
    #number of shifts could be changed with a var in the first array
    @shifts = Array.new(4) {Array.new(7)}
    @options = ["E", "L", "O"]
    @shifts.map! do |arr|
      arr.map! do |element|
        @options[rand(0..1)]
      end

    end

    for weeks in @shifts
      2.times do #number of days off, with a var could be changed
        weeks[rand(0..6)] = "O"
      end
    end


  end
end
