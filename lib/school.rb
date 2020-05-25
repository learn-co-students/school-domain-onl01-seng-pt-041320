# class School
# attr_accessor :roster

# def initialize(name)
#   @name = name
#   @roster = {}
# end

# # def add_student(name, grade)
#     # roster => {}
#   #   if @roster[grade]
#   #   @roster[grade] << name
#   # else
#   #   @roster[grade] = []
#   #   @roster[grade] << name
#   #   end
#   # end

# # ----- 2nd option with the ternary operator -----
# # def add_student(name, grade)
# # @roster[grade] ? @roster[grade].<<[name] : (@roster[grade] = []; @roster[grade]<< name)
# # end

# # ----- third option -------
# def add_student(name, grade)
#   @roster[grade] ||= []
#   @roster[grade] << name
# end

# def grade(grade_number)
#   @roster[grade_number]
#   end

# def sort
#   # iterate over roster hash
#   # for each key (grade) in roster hash, sort the value(student names array) alphabetically
#   # return sorted array
#   sorted = {}
#     @roster.each do |grade, names_array|
#       sorted[grade] = names_array.sort
#     end
#     sorted
#   end
# end

class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {} 
  end
#add_student notes ---
# school.add_student("Zach Morris", 9)
# school.roster
# => {9 => ["Zach Morris"]}
  def add_student(name, grade)
    #if roster.include?(grade)
    #if roster.member?(grade)
    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade(s_grade)
    @roster[s_grade]
  end

  def sort
      sorted = {}
      roster.each do |grade, name|
        sorted[grade] = name.sort
    end
    sorted
  end

end
# school = School.new("Bayside High School")
# school.roster