class School
attr_accessor :roster

def initialize(name)
  @name = name
  @roster = {}
end

# def add_student(name, grade)
    # roster => {}
  #   if @roster[grade]
  #   @roster[grade] << name
  # else
  #   @roster[grade] = []
  #   @roster[grade] << name
  #   end
  # end

# ----- 2nd option with the ternary operator -----
# def add_student(name, grade)
# @roster[grade] ? @roster[grade].<<[name] : (@roster[grade] = []; @roster[grade]<< name)
# end

# ----- third option -------
def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
end

def grade(grade_number)
  @roster[grade_number]
  end

def sort
  # iterate over roster hash
  # for each key (grade) in roster hash, sort the value(student names array) alphabetically
  # return sorted array
  sorted = {}
    @roster.each do |grade, names_array|
      sorted[grade] = names_array.sort
    end
    sorted
  end
end
