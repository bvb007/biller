class Rate
  include Mongoid::Document
  include Mongoid::Timestamps

  field :rate, type: Float
end
