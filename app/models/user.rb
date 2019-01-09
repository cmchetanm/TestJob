class User < ApplicationRecord
  has_many :group_events

  validates :name, presence: true
  validates :email, presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  before_save :make_email_downcase

  def make_email_downcase
    self.email = email.downcase
  end
end
