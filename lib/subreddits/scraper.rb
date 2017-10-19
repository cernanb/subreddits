class Subreddits::Scraper
   def initialize
    get_front = Nokogiri::HTML(RestClient.get('https://reddit.com/'))
    get_front.css('.trending-subreddits-content li').children.text.split('r/').each do |s|
      if s != ""
      Subreddits::TopTrend.new(s,"https://reddit.com/r/#{s}")
      end
    end
   end

   def self.scrape_detail(subreddit)
    doc = Nokogiri::HTML(RestClient.get("https://reddit.com/r/#{subreddit.name}"))
    subreddit.total_users = doc.search('.side .subscribers .number').text
    subreddit.online_users = doc.search('.side .users-online .number').text
    subreddit.information = doc.search('.side .md').text
   end

 end
