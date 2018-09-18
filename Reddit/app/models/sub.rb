# == Schema Information
#
# Table name: subs
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  user_id     :integer          not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sub < ApplicationRecord 
  validates :title, :description, presence: true 
  
  has_many :posts,
  foreign_key: :sub_id,
  class_name: :Post 
  
  belongs_to :user 
  
  has_many :post_subs,
    foreign_key: :sub_id,
    class_name: 'PostSub'
  
end
