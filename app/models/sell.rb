class Sell < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :sell_products
  has_many :products, through: :sell_products

  has_many :sell_services
  has_many :services, through: :sell_services
  
  validates :client, presence: true

  #enum
  enum status: { finished: 0, canceled: 1 }

  def fae_display_field
    id
  end

  #ordena pelo id
  def self.for_fae_index
    order(:id)
  end

  belongs_to :discount
  belongs_to :client
end