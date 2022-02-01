require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Sum: $ #{Store.sum(:annual_revenue)}"
puts "Average: $ #{Store.average(:annual_revenue)}"

puts "There are #{Store.where("annual_revenue > 1000000").count} stores with annual revenue greater than 1M"