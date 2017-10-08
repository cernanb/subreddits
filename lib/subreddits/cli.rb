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
    input = gets.chomp.downcase
    if input.to_i > 0
      info = Subreddits::TopTrend.find_by_subreddit(input)
      puts "Name: #{info.name}"
      puts "Total Subscribers: #{info.total}"
      puts "Subscribers Online: #{info.online}"
      puts "Subreddit rules: #{info.rules}"
      puts "URL: #{info.url}"
      retrieve_info
    elsif input.to_1 <= 0 || nil
      puts "Please try again!"
    elsif input = 'exit'
      goodbye
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
