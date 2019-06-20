class Event < ApplicationRecord
    belongs_to :user 
    has_many :teams

    validates :nameEvent, :date, :time , presence: true 

    validates_length_of :nameEvent, minimum: 10 , maximum: 50
    validates_length_of :description , maximum: 300
    validates_length_of :duration , maximum: 30
    validates_length_of :location,  minimum: 10 , maximum: 30



end
