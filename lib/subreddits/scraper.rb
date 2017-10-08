class Subreddits::Scraper
   def initialize
    get_front = Nokogiri::HTML(open('https://reddit.com/'))
    get_front.css('.trending-subreddits-content li').children.text.split('r/').each do |s|
      if s != ""
      Subreddits::TopTrend.new(s,"https://reddit.com/r/#{s}")
      end
    end
   end
 end
