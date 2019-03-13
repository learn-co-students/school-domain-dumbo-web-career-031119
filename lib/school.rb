# code here!


class School
  attr_accessor :name, :roster
  attr_reader 
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end  
  def add_student(stud_name, stud_grade)
    @roster[stud_grade] ||= []
    @roster[stud_grade] << stud_name
  end  
 def grade(stud_grade)
    @roster[stud_grade]
 end   
 def sort
   new_hash = {}
   @roster.collect do |k,v|
     new_hash[k] = v.sort
   end
   new_hash
  end 
  
end  