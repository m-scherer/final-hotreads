class HotLinksController < ApplicationController

  def index
    @hot_links = hot_reads
  end

end
