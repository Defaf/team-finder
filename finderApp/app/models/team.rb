class Team < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :members
  has_many :users, through: :members
  validates_numericality_of :num_members, less_than: 2
end
