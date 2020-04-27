# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster 
    @roster
  end
  
  def add_student(name, grade)
    if @roster.key?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  # sorts thru each grade alphabetically
  def sort 
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end
