class Country
  include Mongoid::Document
  field :country_id, type: String
  field :name, type: String
end
