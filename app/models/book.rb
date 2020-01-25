class Book < ApplicationRecord
  validates :title, :issue_date, presence: true
  has_and_belongs_to_many :categories
end
