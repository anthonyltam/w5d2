# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  url        :string           not null
#  title      :string           not null
#  content    :text
#  sub_id     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord 
  
  validates :title, presence: true 
  
  belongs_to :author,
    foreign_key: :user_id,
    class_name: :User 
    
  belongs_to :sub 
  
  has_many :post_subs,
    foreign_key: :post_id,
    class_name: 'PostSub'
  
  has_many :sub_posts,
    through: :post_subs,
    source: :sub
  
end
