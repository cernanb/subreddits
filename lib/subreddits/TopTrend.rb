class Subreddits::TopTrend
    attr_accessor :name, :karma, :total, :online, :rules, :url
    @@all=[]

    def initialize
      @all < self
    end

    def all
      @@all
    end

    def find_by_subreddit(index)
      self.all[index-1]
    end
  end
