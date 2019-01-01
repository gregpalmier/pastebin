require "httparty"

module Pastebin
  class API
    attr_reader :scrape_url
    attr_reader :item_url
    attr_reader :post_url
    def initialize(limit = 100) # max 250, recommended 100
      api_dev_key = ENV['PASTEBIN_API_KEY']
      @scrape_url = "https://scrape.pastebin.com/api_scraping.php?api_dev_key=#{api_dev_key}&limit=#{limit}"
      @item_url = "https://scrape.pastebin.com/api_scrape_item.php?api_dev_key=#{api_dev_key}&limit=#{limit}"
      @post_url = "https://pastebin.com/api/api_post.php?api_dev_key=#{api_dev_key}"
    end

    def post(url)
      response = HTTParty.get(url)
    end

    def recent
      post(@scrape_url).parsed_response
    end

    def get_paste(paste_id)
      url = @item_url + "&i=#{paste_id}"
      post(url).parsed_response
    end

  end
end
