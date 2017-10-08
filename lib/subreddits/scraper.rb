class Subreddits::Scraper
   def scrape_reddit_page(subreddit)
    get_front = Nokogiri::HTML(open('https://reddit.com/'))
    get_subreddit = Nokogiri::HTML(open("https://reddit.com/r/#{subreddit}"))
    get_front.css('.trending-subreddits-content li').children.text.split('r/') do |s|
      if s != ""
      Subreddits::TopTrend.new_from_subreddit(s)
    end
   end
 end
