# require 'pry'

class School
  attr_accessor :grade
  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if @roster[grade]
        @roster[grade] << name
    else
      @roster[grade] = []
        @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
    # binding.pry
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
