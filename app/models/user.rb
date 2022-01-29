class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :login, type: String
  field :password, type: String

  validates :login, presence: true
  validates :login, uniqueness: true

  validates :password, length: { minimum: 8 }
  validates :password, presence: true
end
