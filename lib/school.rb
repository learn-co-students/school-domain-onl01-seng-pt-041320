require 'pry'
# code here!
class School
  attr_accessor :roster
  def initialize(school)
    @school = school
    @roster = {}
  end
  #add students
  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
    if @roster[grade].length > 1
      roster = @roster[grade]
      roster << name
    end
  end
end
