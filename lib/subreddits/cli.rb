class Subreddits::CLI

  def run
    #get a function of top 30 subreddits today, under the bottom
    puts "Today's Trending Subreddits:--------------------------------------------------"
    #will be new scraper class that lists an array of all of the subreddits by index + 1
  end

  def get_info
    #asks user which number they want to see more on, get input,
    #if exit, exit, if less than 1, say that's not right
  end

  def retrieve_info
    #once user picks number, go to the respective one, and call the information on that subreddit
    #report how many users are there now, and the rules of posting to subreddit
  end

  def again?
    #show list of subreddits again ask which one to see
  end

  #code will require a database of subreddits and their information (name of subreddit, total users, how many users there now, rules) and
  #scraping file that saves that information to the database
end
