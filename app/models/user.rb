class User < ApplicationRecord
    has_many :user_events
    has_many :events, through: :user_events
    has_secure_password

    validates :first_name, :last_name, {presence: true}
    validates :age, numericailty: {greater_than: 0}
end
