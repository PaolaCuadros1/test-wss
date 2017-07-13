class City
  include Mongoid::Document
  has_many :clients
  
  field :code, type: Integer
  field :name, type: String
  field :depart_id, type: Integer
  field :cap, type: Integer
  
  belongs_to :department, foreign_key: "depart_id", primary_key: "code"
  
  def self.search(search)
    if search
      City.where(name: /.*#{search}.*/i)
    else
      City.all
    end
  end
  
end
