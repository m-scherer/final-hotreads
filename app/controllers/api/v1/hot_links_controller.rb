class Api::V1::HotLinksController < ApplicationController

  def create
    hot_link = HotLink.new(hot_links_params)

    if !hot_link.url
      render json: {message: "HotLink needs a url"}, status: 422
    elsif hot_link.save
      render json: hot_link, status: 201
    else
      render json: {message: "HotLink creation failed"}, status: 422
    end
  end

  def index
    render json: hot_reads, status: 200
  end

  private

  def hot_links_params
    params.permit(:url)
  end

end
