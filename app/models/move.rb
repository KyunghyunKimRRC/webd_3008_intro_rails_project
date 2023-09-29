class Move < ApplicationRecord
  belongs_to :type

  validates :name, presence: true, uniqueness: true 
  validates :power, :accuracy, :type, :pp, presence: true
end
