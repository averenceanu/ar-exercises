require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


surrey_store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler_store = Store.create(name: "Richmond", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown_store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

men_only = Store.where("mens_apparel = true")

men_only.each do |store| 
  puts "Store name: #{store.name}, annual_revenue: #{store.annual_revenue}"
end

women_annual_revenue_only= Store.where("womens_apparel = true and annual_revenue < 1000000")

women_annual_revenue_only.each do |store| 
  puts "Store name: #{store.name}, annual_revenue: #{store.annual_revenue}"
end