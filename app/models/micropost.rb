class Micropost < ApplicationRecord
  belongs_to :user
  vaildates :content, length: { maximum: 140 }
end
