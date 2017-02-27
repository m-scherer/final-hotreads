class ReadLinksController < ApplicationController

  def index
    @hot_links = HotLink.all
  end

end
