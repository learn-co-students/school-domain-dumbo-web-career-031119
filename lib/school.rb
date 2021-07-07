# code here!
require 'pry'
class School

attr_accessor :name,  :school
attr_reader :roster, :roster
@@all = []
def initialize(school)

  @roster = {}
  @school = school
  @name = name

  @@all << self

end

def self.all
  @@all
end

def add_student(name, grade)
@grade = grade
 @roster[grade] ||= []
 @roster[grade] << name
end

def grade(grade)

roster[grade]

end

def sort
  
sorted = {}

roster.each {|key, value| sorted[key]= value.sort}

sorted

end






 end

cam = School.new("Camarillo")
sumner = School.new("Sumner")

cam.add_student("bTim", 10)
cam.add_student("cjim", 10)
cam.add_student("aKim",10)
cam.add_student("lary", 7)
sumner.add_student("sal", 3)

binding.pry
