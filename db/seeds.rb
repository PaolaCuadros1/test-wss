require 'open-uri'

Country.delete_all
open("db/countries.txt") do |countries|
  countries.read.each_line do |country|
    country_id, name = country.chomp.split("|")
    Country.create!(:name => name, :country_id => country_id.strip)
  end
end

Department.delete_all
open("db/departments.txt") do |departments|
  departments.read.each_line do |department|
    code, name, country_id = department.chomp.split("|")
    Department.create!(:name => name, :code => code, :country_id => country_id.strip)
  end
end

City.delete_all
open("db/cities.txt") do |cities|
  cities.read.each_line do |city|
    city_id, depart_id, name, cap = city.chomp.split("|")
    City.create!(:code => city_id.to_i, :name => name, :depart_id => depart_id.to_i, :cap => cap)
  end
end

TypeDocument.delete_all
open("db/type_document.txt") do |typeDocument|
  typeDocument.read.each_line do |tDocument|
    type, name, cap = tDocument.chomp.split("|")
    TypeDocument.create!(:type => type.to_i, :name => name)
  end
end