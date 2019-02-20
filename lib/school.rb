# code here!
require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |key, val|
      sorted_hash[key] = val.sort
    end
    sorted_hash
  end

end
