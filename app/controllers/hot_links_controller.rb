class HotLinksController < ApplicationController

  def index
    @hot_links = HotLink.select('hot_links.url, count(hot_links.url) as url_count').group('hot_links.url').order('url_count desc').limit(10)
  end

end
