class XmlController < ApplicationController
  def rss
    @feed_title = "名言の新着リスト - Meegen"
    @meegens = Meegen.find(:all, :order => "created_at desc", :limit => 10)
    # app/view/layout/application.rhtmlがあるとまずいので
    render :layout => false
  end
end
