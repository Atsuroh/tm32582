class Purchase
  include ActiveModel::Model
  attr_accessor :token, :user_id, :tmart_id, :accept_id

  with_options presence: true do
    validates :token
    validates :user_id
    validates :tmart_id
    validates :accept_id, numericality: { other_than: 1 }
  end

  def save
    order = Order.create(user_id: user_id, tmart_id: tmart_id)
    Acceptance.create(accept_id: accept_id,  order_id: order.id)
  end
end