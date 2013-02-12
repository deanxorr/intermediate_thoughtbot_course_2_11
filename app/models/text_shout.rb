class TextShout < ActiveRecord::Base
  attr_accessible :body, :private
  validates :body, presence: true
end