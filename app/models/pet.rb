class Pet < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximum: 20}
    validates :owner, presence: true
    validates :date_in, presence: true
    validates :date_out, presence: true
end
