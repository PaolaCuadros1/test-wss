class Department
  include Mongoid::Document
  has_many :departments
  field :code, type: Integer
  field :name, type: String
  field :country_id, type: String
  
  belongs_to :country, foreign_key: "country_id", primary_key: "country_id"
  
end
