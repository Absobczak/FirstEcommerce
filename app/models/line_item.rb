class LineItem < ApplicationRecord
    belongs_to :product
    belongs_to :order, optional: true
    
    validates :quantity, :numericality => true
end
