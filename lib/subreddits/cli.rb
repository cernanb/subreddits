class Subreddits::CLI

  def run
    #get a function of top trending subreddits, under the bottom
    puts "Today's Trending Subreddits:--------------------------------------------------"
    display_subreddits
    retrieve_info
    again
    goodbye
  end

  def retrieve_info
    puts "Which subreddit would you like to know about today?"
    input = gets.chomp
    while input != 'exit'
      #takes input, gets the subreddit associated with it, then does find_by_subreddit
    puts "Name: #{Subreddits::TopTrend(input).name}"
    puts "Total Subscribers: #{Subreddits::TopTrend(input).total}"
    puts "Subscribers Online: #{Subreddits::TopTrend(input).online}"
    puts "Subreddit rules: #{Subreddits::TopTrend(input).rules}"
    puts "URL: #{Subreddits::TopTrend(input).url}"
  end

  def again?
    puts ""
  end

  def display_subreddits
    puts Subreddits::TopTrend.all
  end

  def goodbye
    puts "Thanks for visiting!"
  end
end
