# code here!
require 'pry'

class School

  # school = School.new("Bayside High School")

  # ROSTER = {}
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
    # binding.pry
  end

  def grade(num_grade)
    # new_array = []
    # roster.select do |students|
    #   if num_grade == grade
    #     new_array << students
    #   end
    # end
    @roster[num_grade]
  end

  def sort
    new_hash = {}
    @roster.collect do |grades, students|
      new_hash[grades] = students.sort
    end
    new_hash
  end
end
