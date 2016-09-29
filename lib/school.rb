class School
  attr_accessor :roster, :add_student

  def initialize(school_name)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, age)
    @roster[age] ||= [] 
    @roster[age] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade] = students.sort
    end
  end



end