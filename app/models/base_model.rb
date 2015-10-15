class BaseModel
  include ROM::Model::Attributes

  attribute :id, Integer
  timestamps
end
