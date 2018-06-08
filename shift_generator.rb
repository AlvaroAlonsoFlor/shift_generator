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
      @rand1 = rand(0..6)
      @rand2 = rand(0..6)
      while @rand1 == @rand2
        @rand2 = rand(0..6)
      end

      weeks[@rand1] = "O"
      weeks[@rand2] = "O"

    end


  end
end

class ShiftBuilder
  def initialize
    @shifts = Array.new(4) {Array.new(7)}
  end
end
