class Subreddits::Scraper
   def scrape_reddit_page(subreddit)
    get_front = Nokogiri::HTML(open('https://reddit.com/'))
    get_subreddit = Nokogiri::HTML(open("https://reddit.com/r/#{subreddit}/"))
    new_subreddit = Subreddits::TopTrend.new
    new_subreddit.name = get_file.css('.subreddit hover may-blank').text
    new_subreddit.total=
    new_subreddit.online=
    new_subreddit.rules=
    new_subreddit.url='https://reddit.com/r/#{subreddit}'
   end
 end
