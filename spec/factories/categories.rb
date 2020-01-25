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

FactoryBot.define do
  factory :category do
    
  end
end
