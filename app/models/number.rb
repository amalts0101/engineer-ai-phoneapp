class Number < ApplicationRecord
  has_many :assortments
  belongs_to :user, through: :assortments
end
