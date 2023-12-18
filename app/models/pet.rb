class Pet < ApplicationRecord
   belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 20}
    validates :owner, presence: true
    validates :date_in, presence: true
    validates :date_out, presence: true
end
