class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true, uniqueness: true
  has_many :plants, dependent: :destroy
end
