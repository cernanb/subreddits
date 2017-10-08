class Subreddits::Scraper
   def initialize
    get_front = Nokogiri::HTML(open('https://reddit.com/'))
    get_front.css('.trending-subreddits-content li').children.text.split('r/') do |s|
      if s != ""
      Subreddits::TopTrend.new_from_subreddit(s)
      end
    end
   end
 end
