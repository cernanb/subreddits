class Subreddits::TopTrend
    attr_accessor :name, :total, :online, :rules, :url
    @@all=[]

    def initialize(name:, total:, online:, rules:, url: )
      @name = name
      @total = total
      @online = online
      @rules = rules
      @url = url
      @@all = []
    end

    def all
      @@all
    end

    def find_by_subreddit(index)
      self.all[index-1]
    end



  end





end
