# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  author     :string
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  validates :title, :author, :body, presence: true
  has_many :comments
end
