class Task < ApplicationRecord
  belongs_to :user
  belongs_to :vendor
  has_many :task_comments, dependent: :destroy
end
