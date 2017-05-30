require 'open-uri'

Country.delete_all
open("db/countries.txt") do |countries|
  countries.read.each_line do |country|
    country_id, name = country.chomp.split("|")
    Country.create!(:name => name, :country_id => country_id.strip)
  end
end

Departament.delete_all
open("db/departaments.txt") do |departaments|
  departaments.read.each_line do |departament|
    code, name, country_id = departament.chomp.split("|")
    Departament.create!(:name => name, :code => code, :country_id => country_id.strip)
  end
end

City.delete_all
open("db/cities.txt") do |cities|
  cities.read.each_line do |city|
    city_id, depart_id, name, cap = city.chomp.split("|")
    City.create!(:code => city_id.to_i, :name => name, :depart_id => depart_id.to_i, :cap => cap)
  end
end