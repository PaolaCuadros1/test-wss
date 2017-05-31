class Client 
    include Mongoid::Document 
    include Mongoid::Paperclip
    # devise :database_authenticatable, :registerable, :confirmable, :recoverable
    devise :database_authenticatable, :registerable, :recoverable
  
    
    
    
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
    
    validates :first_name, :last_name, presence: true
    belongs_to :country, foreign_key: "country_id", primary_key: "country_id"
    belongs_to :city, foreign_key: "city_id", primary_key: "code"
    belongs_to :departament, foreign_key: "departament_id", primary_key: "code"
    
end