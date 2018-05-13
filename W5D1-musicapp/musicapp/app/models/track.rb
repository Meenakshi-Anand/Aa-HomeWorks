class Track < ApplicationRecord
  validates :title,:ord,:album_id,presence: true
  validates :track_type, inclusion: %w(Regular Bonus)

  belongs_to :album,
  primary_key: :id,
  foreign_key: :album_id,
  class_name: :Album

  has_one :band,
  through: :album,
  source: :band
end
