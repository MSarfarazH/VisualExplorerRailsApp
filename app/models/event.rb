class Event < ApplicationRecord
belongs_to :location
has_many :user_events
has_many :users, through: :user_events

validates :name, :time, :category, {presence: true}
validates :name, uniqueness: {scope: :user}
end
