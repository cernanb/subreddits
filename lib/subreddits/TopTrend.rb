class Subreddits::TopTrend
    attr_accessor :name, :url, :get_subreddit
    @@all=[]

    def new_from_subreddit(subreddit)
      self.new(subreddit, "https://www.reddit.com/r/#{subreddit}")
    end

    def initialize(name, url)
      @name = name
      @url = url
      @all < self
      @get_subreddit = Nokogiri::HTML(open("https://reddit.com/r/#{name}"))
    end

    def self.all
      @@all
    end

    def total_users(subreddit)
      @get_subreddit.css('.side .subscribers .number').text
    end

    def online_users(subreddit)
      @get_subreddit.css('.side .users-online .number').text
    end


  end
