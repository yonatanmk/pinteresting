class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 40}
  validates :description, presence: true, length: { minimum: 150}

  has_many :answers
end
