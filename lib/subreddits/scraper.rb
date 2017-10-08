require 'nokogiri'
class Scraper
   @all = []
   def scrape_reddit_page(subreddit)
    get_front = Nokogiri::HTML(open('http://reddit.com'))
    get_subreddit = Nokogiri::HTML(open('https://reddit.com/r/#{subreddit}'))
    new_subreddit = Subreddits::TopTrend.new()
     = get_file.css('.subreddit hover may-blank')
    puts scrape

     end
   end
#end
