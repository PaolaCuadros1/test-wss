class Country
  include Mongoid::Document
  has_many :countries
  
  field :country_id, type: String
  field :name, type: String
end
