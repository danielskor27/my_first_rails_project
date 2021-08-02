class Question < ApplicationRecord
  validates :title, presence: true,length: {minimum: 2}
  validates :body, presence: true,length: {minimum: 2}

  def formatted_crated_at
    self.created_at.strftime('%Y-%m-%d_%H:%M:%S')
  end
end
