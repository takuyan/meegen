class Meegen < ActiveRecord::Base
  acts_as_taggable_on :tags

  has_many :comments,
    :dependent => :destroy

  validates_presence_of :name,
    :message => "entry name"

  def add_fav
    if self.fav
      self.fav += 1
      self.save
    else
      self.fav = 1
      self.save
    end
  end

  def similar
    self.tags
  end
end
