# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  del_flg    :boolean          default(FALSE), not null
#  name       :string(255)      default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  validates :name, presence: true

  has_and_belongs_to_many :books
end
