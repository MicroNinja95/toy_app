class User < ApplicationRecord
has_many :microposts
validates :name, presence: true
validates :user_email, presence: true
end
