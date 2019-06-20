class Team < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :members
  has_many :users, through: :members
  validates_length_of :name, minimum: 2 , maximum: 30
  validates :name , uniqueness: true 
  validates_numericality_of :num_members, greater_than: 1, less_than:7
end
