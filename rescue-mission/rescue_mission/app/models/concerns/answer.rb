class Answer < ApplicationRecord
  validates :body, presence: true, length: { minimum: 50}
  validates :best, presence: true

  belongs_to :question
end
