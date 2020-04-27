require 'pry'

class School
    attr_accessor :roster
    attr_reader :name

    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, year)
        if !(roster.include?(year))
            roster[year] = []
            roster[year] << student
        elsif roster.include?(year)
            roster[year] << student
        end
    end

    def grade(year)
       roster[year]
    end

    def sort
        roster.collect {|year, student| student.sort!}
        roster.sort.to_h
    end

end
