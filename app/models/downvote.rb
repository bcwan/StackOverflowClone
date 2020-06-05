# == Schema Information
#
# Table name: downvotes
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_downvotes_on_user_id_and_question_id  (user_id,question_id) UNIQUE
#
class Downvote < ApplicationRecord
end