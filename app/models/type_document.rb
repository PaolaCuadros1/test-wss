class TypeDocument
  include Mongoid::Document
  has_many :typeDocuments
  
  field :name, type: String
  field :type, type: Integer
end
