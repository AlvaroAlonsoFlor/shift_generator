class ShiftGen
  attr_reader :shifts

  def initialize
    @shifts = Array.new(4) {Array.new(7)}
    @options = ["E", "L"]
    @shifts.map! do |arr|
      arr.map! do |element|
        @options[rand(0..1)]
      end

      #REWORK NEEDED

      #Add days off random in each week
      #@shifts[arr][rand(0..6)] = "O"
      #while only 1 "O" continuing putting "O", when 2, break
      #arr.map! do |arr|
        #@counter = 0
        #while counter <= 2
          #@counter += 1 if arr == "O"
          #break
        #end

      #end
      #END OF REWORK NEEDED
    end
  end
end
