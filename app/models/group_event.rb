class GroupEvent < ApplicationRecord
  belongs_to :user

  before_save :set_duration
  before_save :set_markdown_description, if: :description_changed?

  validates :user_id, :start_date, :end_date, :name, presence: true
  validates :location, :name, length: { maximum: 50 }
  validate :end_cannot_be_less_start, :start_cannot_be_in_the_past

  def start_cannot_be_in_the_past
    errors.add(:start_date, "date must be less then current date") if start_date <= Date.today
  end

  def end_cannot_be_less_start
    errors.add(:end_date, "can't be less than start time") if end_date < start_date
  end

  def set_duration
    self.duration = ((self.end_date - self.start_date) / 1.day).to_i
  end

  def soft_delete!
    update_attribute(:deleted_at, DateTime.now)
  end

  def publish_event!
    return false if published? && self.errors.add(:base, "Already Published.")
    return false if esure_to_published? && self.errors.add(:base, "To publish all of the fields are required.")
    update(published_at: DateTime.now)
  end

  def published?
    !!published_at
  end

  def esure_to_published?
    attributes.except("published_at", "deleted_at").values.include?(nil)
  end

  def self.markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, escape_html: true)
  end

  def set_markdown_description
    self.markdown_description = self.class.markdown.render(description)
  end
end
