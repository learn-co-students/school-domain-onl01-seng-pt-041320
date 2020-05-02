class School
  
  attr_accessor :roster, :grade

  def initialize(name_school)
    @name=name_school
    @roster={}
  end
  
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
      
end
    
  


