class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true, uniqueness: true
end
