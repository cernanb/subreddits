class Subreddits::CLI

  def run
    Subreddits::Scraper.new
    #puts "Today's trending subreddits:"
    Subreddits::TopTrend.all.each_with_index do |s, i|
      puts "#{i+1}. #{s.name}"
    end
    #retrieve_info
    #goodbye
  end

  def retrieve_info
    puts "Which subreddit would you like to know about today?"
    input = gets.chomp.downcase
    if input.to_i > 0
      info = Subreddits::TopTrend.all[input.to_i-1]
      puts "Name: #{info.name}"
      puts "Total Subscribers: #{info.total_users}"
      puts "Subscribers Online: #{info.online_users}"
      puts "URL: #{info.url}"
      retrieve_info
    elsif input.to_i <= 0 || input.to_i == nil
      puts "Please try again! Input the number from the list or type 'exit'"
    elsif input == 'exit'
      goodbye
    end
  end

  #def display_subreddits
  #  trending = Subreddits::TopTrend.all
  #  trending.each_with_index do |s, i|
  #    puts "#{i+1}. #{s.name}"
  #  end
  #end

  def goodbye
    puts "Thanks for visiting!"
  end
end
