# == Schema Information
#
# Table name: downvotes
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  answer_id   :integer          default(0)
#  question_id :integer          not null
#  user_id     :integer          not null
#
class Downvote < ApplicationRecord
  
  validates_uniqueness_of :question_id, :scope => :user_id

  belongs_to :user,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id,
    optional: true

  belongs_to :question,
    class_name: :Question,
    foreign_key: :question_id,
    primary_key: :id,
    optional: true

  belongs_to :answer,
    class_name: :Answer,
    foreign_key: :answer_id,
    primary_key: :id,
    optional: true
  
end
