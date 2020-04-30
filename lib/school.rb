# code here!
class School 
  attr_accessor :name, :roster
  
  def initialize(name)
      @name = name
      @roster = {}
  end
  
  def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student
  end 
  
  def grade(student_grade)
      roster[student_grade]
  end 
  
  def sort 
      new_roster={}
      roster.each do |grade, student|
        new_roster[grade]= student.sort
      end
      new_roster
  end
end 