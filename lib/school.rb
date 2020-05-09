# code here!
class School
  
  
  attr_accessor :name, :roster
  
  def initialize(name)
  @name = name
  @roster = {}
  end
  
  def add_student(student, year)
    
#    current_roster = roster[]
    
#    if roster[grade].empty?
#      roster[grade] = []
#    end
    
    roster[year] ||= []
    roster[year] << student 
  end
    
  def grade(year)
    roster[year]
  end
    
  def sort 
    hash = {}
    roster.each do |x, y| 
    hash[x] = y.sort 
    end 
    hash
  end

end