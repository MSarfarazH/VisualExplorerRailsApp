class User < ApplicationRecord
    has_many :user_events
    has_many :events, through: :user_events

    validates :first_name, :last_name, {presence: true}
    validates :username, :password_digest, {uniqueness: true, presence: true}
end
