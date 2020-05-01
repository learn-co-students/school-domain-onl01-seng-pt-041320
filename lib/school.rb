class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
      if @roster[grade]
        @roster[grade] << name
      else
        @roster[grade] = []
        @roster[grade] << name
      end
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort
    sorted = {}
    @roster.each do |grade, names_array|
      sorted[grade] = names_array.sort
    end
    sorted
  end

end