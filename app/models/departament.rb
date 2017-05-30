class Departament
  include Mongoid::Document
  field :code, type: Integer
  field :name, type: String
  field :country_id, type: String
  
end
