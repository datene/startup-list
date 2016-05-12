class Startup < ActiveRecord::Base
  validates :company, presence: true
  validates :description, presence: true
end
