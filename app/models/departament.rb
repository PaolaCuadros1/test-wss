class Departament
  include Mongoid::Document
  has_many :departaments
  field :code, type: Integer
  field :name, type: String
  field :country_id, type: String
  
end
