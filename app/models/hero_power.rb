class HeroPower < ApplicationRecord
    validates :strength, inclusion:{
        in: ['Strong', 'Weak', 'Average'],
        message: "%{value} is not in the provided list"
    }
    belongs_to :power
    belongs_to :hero
end
