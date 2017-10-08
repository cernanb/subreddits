class Subreddits::TopTrend
    attr_accessor :name, :url
    @@all=[]

    def new_from_subreddit(subreddit)
      self.new(subreddit, "https://www.reddit.com/r/#{subreddit}")
    end

    def initialize(name, url)
      @name = name
      @url = url
      @all < self
    end

    def all
      @@all
    end

    def find_by_subreddit(index)
      self.all[index-1]
    end

    def total_users(subreddit)
      #scrape the page for the subreddit total users)
    end

    def online_users(subreddit)
    end

    def rules(subreddit)
    end
  end
