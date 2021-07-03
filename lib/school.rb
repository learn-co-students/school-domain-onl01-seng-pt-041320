# code here!
require 'pry'

class School
    attr_accessor :grade
    attr_reader :name, :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end
    
    def add_student(name, grade)
        #Checks if there is grade
        if roster.key?(grade) == true
            @roster[grade] << name
        #If there is no grade a key value/pair needs to be assigned
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        return @roster.values_at(grade).flatten
    end  

    def sort
        return roster.sort_by(&:first).map{|k, v| [k,v.sort]}.to_h
    end

end