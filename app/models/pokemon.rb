class Pokemon < ApplicationRecord
    validates :name, :type, :base, presence: true, uniqueness: true
end
