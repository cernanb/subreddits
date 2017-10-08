class Subreddits::CLI

  def run
    #get a function of top trending subreddits, under the bottom
    puts "Today's Trending Subreddits:--------------------------------------------------"
    display_subreddits
    retrieve_info
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
      retrieve_info
    end
  end

  def display_subreddits
    Subreddits::TopTrend.all.each_with_index do |sub, i|
      puts "#{i+1}. #{sub.name} | #{sub.karma}"
    end
  end

  def goodbye
    puts "Thanks for visiting!"
  end
end
