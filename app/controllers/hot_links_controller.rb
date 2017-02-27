class HotLinksController < ApplicationController

  def index
    @hot_links = HotLink.all
  end

end
