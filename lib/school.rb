# code here!

# class School

#   attr_reader :roster

#   ROSTER = {}
  
#   def roster=(roster)
#     @roster = roster
#     ROSTER << roster 
#   end 
 

# end

class School

 def initialize(new_school)
   @new_school = new_school
   @roster = {}
 end
 
 def roster
   @roster
 end
 
 def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
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