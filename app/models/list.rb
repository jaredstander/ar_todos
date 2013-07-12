class List < ActiveRecord::Base
  has_many :todos

  validates :list_name, presence: true
end
