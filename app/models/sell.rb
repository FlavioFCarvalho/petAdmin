class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  
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