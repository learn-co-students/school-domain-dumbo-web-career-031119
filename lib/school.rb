require "pry"
class School

  attr_accessor :school, :name, :grade


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    # @student = name
    # @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
