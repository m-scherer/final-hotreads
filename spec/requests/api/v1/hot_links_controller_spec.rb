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
  context 'GET /api/v1/hot_links' do
    it "can get the top ten hot_links" do

      10.times do |i|
        HotLink.create(url: "http://test#{i}.com")
      end

      get '/api/v1/hot_links'

      parsed = JSON.parse(response.body)
      expect(response.status).to eq(200)
      expect(parsed).to be_instance_of(Array)
      expect(parsed.count).to eq(10)
    end
  end
end
