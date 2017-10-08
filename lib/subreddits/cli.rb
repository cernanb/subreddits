class Subreddits::CLI

  def run
    #get a function of top trending subreddits, under the bottom
    puts "Today's Trending Subreddits:--------------------------------------------------"
  end

  def get_info
    puts "Which subreddit would you like to know about today?"
    input = gets.chomp
    if input = 'exit'
      puts "Bye! See you again!"
      break
    ##put a method here that takes in input as an agrument, and finds_by_subreddit to deliver information
  end

  def retrieve_info
    puts #TopTrend.findbyname(input).name #name - would be a attr_accessor in Top Trend
    puts #total subscribers - would be a attr_accessor in Top Trend
    puts #online subscribers - would be a attr_accessor in Top Trend
    puts #rules - would be attr_accessor in Top
    puts #url - would be attr_accessor
  end

  def again?
    puts ""
  end

  #code will require a database of subreddits and their information (name of subreddit, total users, how many users there now, rules) and
  #scraping file that saves that information to the database
end
