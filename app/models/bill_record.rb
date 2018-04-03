class BillRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  field :quantity, type: Float
  field :amount, type: Float
  field :rate, type: Float

end
