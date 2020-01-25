# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  del_flg    :boolean          default(FALSE), not null
#  issue_date :date             not null
#  title      :string(255)      default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  validates :title, :issue_date, presence: true
  has_and_belongs_to_many :categories
end
