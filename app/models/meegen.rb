class Meegen < ActiveRecord::Base
  acts_as_taggable_on :tags

  has_many :comments,
    :dependent => :destroy

  def add_fav
    if self.fav
      self.fav += 1
      self.save
    else
      self.fav = 1
      self.save
    end
  end
end
