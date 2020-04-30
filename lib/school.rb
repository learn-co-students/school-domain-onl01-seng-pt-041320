class School
  
  attr_accessor 
  attr_reader :school, :roster, :add_student

  def initialize(school, roster = {}) 
    @school = school 
    @roster = roster
  end 
    
  def add_student(name, grade)
    if  @roster.key?(grade) == true
        @roster[grade] << name
    else
        @roster[grade] = []
        @roster[grade] << name
    end
  end
    
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end
  
end 
