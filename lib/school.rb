class School
  attr_accessor :roster
  def initialize(name)
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(name)
    @roster[name]
  end

  def sort
    @roster.each_value do |names|
      names.sort!
    end
  end



end