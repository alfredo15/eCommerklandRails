class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :cost, type: Integer
  field :quantity, type: Integer

  validates :name,:description,:cost,:quantity, presence: true
  validates :quantity, :cost, numericality: { only_integer: true }

end