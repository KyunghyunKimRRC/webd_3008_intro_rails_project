class Move < ApplicationRecord
  belongs_to :type

  validates :name, :power, :accuracy, :type, presence: true, uniqueness: true
end
