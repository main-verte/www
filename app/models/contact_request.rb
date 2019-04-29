# == Schema Information
#
# Table name: contact_requests
#
#  id         :bigint           not null, primary key
#  content    :text
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContactRequest < ApplicationRecord
  validates :email,
            presence: true,
            format: {
              with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
              message: "must be a valid email address"
            }
  validates :content, presence: true, length: { minimum: 10, maximum: 1000 }
end
