class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ? @roster[grade].<<(name) : (@roster[grade] = [];@roster[grade] << name)
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
 