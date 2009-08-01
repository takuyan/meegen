class Comment < ActiveRecord::Base
  belongs_to :meegen, :dependent => :destroy
end
