class Client 
    include Mongoid::Document 
    include Mongoid::Paperclip
    # devise :database_authenticatable, :registerable, :confirmable, :recoverable
    devise :database_authenticatable, :registerable, :recoverable
  
    #belongs_to :departament
    
    field :avatar, type: String
    has_mongoid_attached_file :avatar
    
    has_attached_file :avatar, :styles => {:thumb => "100x100#", :small  => "150x150>", :medium => "200x200" }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    
    field :first_name, type: String
    field :last_name, type: String
    field :type_id, type: String
    field :number_id, type: String
    # field :birthdate, type: Date
    field :gender, type: String
    field :country, type: String
    field :departament, type: Integer
    field :city, type: Integer
end