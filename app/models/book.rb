class Book
  include Mongoid::Document
  field :book_id, type: String
  field :author, type: String
  field :gender, type: String
  field :title, type: String
  field :quantity, type: Integer
end
