require 'pry'

class School
    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(student_name, student_grade)
        @roster[student_grade] ||= []
        @roster[student_grade] << student_name
        #binding.pry
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        hash = {}
        @roster.collect do |key, value|
            hash[key] = value.sort
        end
        hash
    end
end