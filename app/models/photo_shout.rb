class PhotoShout < ActiveRecord::Base
  attr_accessible :image, :private
  # this tells it what size image to display at what url
  has_attached_file :image, styles: {
    shout: "100x100#"
  }
end
