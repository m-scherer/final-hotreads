require 'rails_helper'

RSpec.describe 'HotLinksController' do
  context 'POST /api/v1/hot_links' do
    it "can create a hot link" do
      params = {url: "https://turing.io"}

      post '/api/v1/hot_links', params: params

      expect(response.status).to eq(201)
      expect(HotLink.count).to eq(1)
      expect(HotLink.first.url).to eq("https://turing.io")
    end
    it "doesn't create an invalid hot link" do
      params = {}

      post '/api/v1/hot_links', params: params

      expect(response.status).to eq(422)
      expect(HotLink.count).to eq(0)
    end
  end
end
