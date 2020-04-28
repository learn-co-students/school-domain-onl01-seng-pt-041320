class School
    attr_accessor :roster, :student, :grade_level
    attr_reader :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(student, grade_level)
        if roster[grade_level]
            roster[grade_level] << student
        else roster[grade_level] = []
            roster[grade_level] << student
        end
    end
    def grade(grade_level)
        roster[grade_level]
    end
    def sort
        sort = {}
        roster.each do |grade_level, student|
            sort[grade_level] = student.sort
        end
        sort
    end
end
