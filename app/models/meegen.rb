class Meegen < ActiveRecord::Base
  acts_as_taggable

  has_many :comments
end
