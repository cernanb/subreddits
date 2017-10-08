class Subreddits::TopTrend
    attr_accessor :name, :total, :online, :rules, :url
    @@all=[]

    def initialize(name:, total:, online:, rules:, url: )
      @name = name
      @total = total
      @online = online
      @rules = rules
      @url = url
    end

    def all
      @@all
    end

    def find_by_subreddit(index)
      self.all[index-1]
    end

    def display_subreddits
      #scrape the current homepage of reddit and show the top 10 unique subreddits
    end

    def information
      #when something on CLI is inputed, scrape subreddit - interpolation - and scrape the info from it
      #array of total, online, rules, url, in an array
    end

    def scrape_reddit_page
      file = Nokogiri::HTML(open('http://reddit.com'))
      file.css('.subreddit hover may-blank').map do |sub|
        @all << sub.text
      end
      @all
    end
  end
