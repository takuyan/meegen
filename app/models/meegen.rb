class Meegen < ActiveRecord::Base
  acts_as_taggable

  has_many :comments,
    :dependent => :destroy

  def add_fav
    self.fav += 1
    self.save
  end
end
