class ContactRequest < ApplicationRecord
  validates :email,
            presence: :true,
            format: {
              with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
              message: "must be a valid email address"
            }
  validates :content, presence: :true, length: {minimum: 10, maximum: 1000}
end
