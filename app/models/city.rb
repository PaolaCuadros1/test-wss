class City
  include Mongoid::Document
  field :code, type: Integer
  field :name, type: String
  field :depart_id, type: Integer
  field :cap, type: Integer
end
