class ShiftGen

  def initialize
    @shifts = Array.new(7) {Array.new(4)}
    @options = ["E", "L"]
    shifts.map! do |arr|
      arr.map! do |element|
        @options[rand(0..1)]
      end
      #Add days off random in each week
      @shifts[arr][rand(0..6)] = "O"
      #while only 1 "O" continuing putting "O", when 2, break
      @counter = 0
      arr.map! do |arr|
        @counter += 1 if arr == "O"
        

      end
    end


end
