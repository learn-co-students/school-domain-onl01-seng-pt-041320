class School
   attr_accessor :name, :roster
   
   def initialize(name)
    @name = name
    @roster = {}
   end

   def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
   end

   def grade(grade)
    @roster[grade]
   end

   def sort
    new_roster = {}
    @roster.keys.sort.each do |key|
        new_roster[key] = @roster[key].sort
    end
        new_roster
    end

end   

# school = School.new("Test School")
