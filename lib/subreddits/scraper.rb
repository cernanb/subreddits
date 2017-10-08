class Subreddits::Scraper
   def scrape_reddit_page(subreddit)
    get_front = Nokogiri::HTML(open('http://reddit.com'))
    get_subreddit = Nokogiri::HTML(open('https://reddit.com/r/#{subreddit}'))
    new_subreddit = Subreddits::TopTrend.new()
    new_subreddit.name = get_file.css('.subreddit hover may-blank')
    new_subreddit.karma =
    new_subreddit.total=
    new_subreddit.online=
    new_subreddit.rules=
    new_subreddit.url='https://reddit.com/r/#{subreddit}'
   end
 end
