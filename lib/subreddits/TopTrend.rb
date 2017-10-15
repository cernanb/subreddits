class Subreddits::TopTrend
    attr_accessor :name, :url, :total, :online
    @@all = []

    def initialize(name, url)
      @name = name
      @url = url
      @@all << self

    end

    def self.all
      @@all
    end

    def total_users(subreddit)
      Nokogiri::HTML(RestClient.get("https://reddit.com/r/#{subreddit}")).search('.side .subscribers .number').text
    end

    def online_users(subreddit)
      Nokogiri::HTML(RestClient.get("https://reddit.com/r/#{subreddit}")).search('.side .users-online .number').text
    end

  end
