class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :cost, type: Integer
  field :quantity, type: Integer

end