class Pokemon < ApplicationRecord
    has_many :pokemon_types
    has_many :types, through: :pokemon_types

    validates :id, :name, presence: true, uniqueness: true
    validates :hp, :attack, :defense, :sp_attack, :sp_defense, :speed, presence: true
end
