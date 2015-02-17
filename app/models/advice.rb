class Advice < ActiveRecord::Base
  validates :text, presence: true
end
