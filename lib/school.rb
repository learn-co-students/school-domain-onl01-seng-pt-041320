class School
  
  attr_reader :name, :roster, :grade
  attr_accessor :grade
  
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end
  
  def add_student(name, grade)
    if roster.key?(grade) == true
      @roster[grade] << name
    else 
      roster[grade] = []
      roster[grade] << name
    end
  end
  
  def grade(grade)
     @roster.values_at(grade).flatten
  end
  
  #hash.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
  def sort
    @roster.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
    
    
    
  end
  end

  


