class Subreddits::TopTrend
    attr_accessor :name, :url, :get_subreddit
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
      get_subreddit = Nokogiri::HTML(open("https://reddit.com/r/#{subreddit}"))
      get_subreddit.css('.side .subscribers .number').text
    end

    def online_users(subreddit)
      get_subreddit = Nokogiri::HTML(open("https://reddit.com/r/#{subreddit}"))
      get_subreddit.css('.side .users-online .number').text
    end


  end
