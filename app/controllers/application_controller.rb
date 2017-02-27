class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def hot_reads
    HotLink.select('hot_links.url, count(hot_links.url) as url_count')
                  .where('hot_links.created_at > ?', Time.now - 1.day)
                  .group('hot_links.url')
                  .order('url_count desc')
                  .limit(10)
  end


end
