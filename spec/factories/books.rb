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

FactoryBot.define do
  factory :book do
    
  end
end
