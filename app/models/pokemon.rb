class Pokemon < ApplicationRecord
    validates :id, :name, presence: true, uniqueness: true
    validates :hp, :attack, :defense, :sp_attack, :sp_defense, :speed, presence: true
end
