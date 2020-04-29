class School
    attr_reader :name
    attr_accessor :roster, :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student (student, level)
        if @roster[level] == nil
             @roster[level] = []
             @roster[level] << student 
        else
            @roster[level] << student 
        end
    end

    def grade (grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key].sort!
        end
        @roster
    end

end