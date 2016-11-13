class Moment < ApplicationRecord
  # paperclip
  has_attached_file :picture, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  validates_presence_of :moment_time, message: 'Time cannot be empty'
  validates_presence_of :message, message: 'Message cannot be empty'

  # scope
  scope :latest_created_at, -> { order(moment_time: :desc) }
end
