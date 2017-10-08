class Subreddits::CLI

  def run
    Subreddits::Scraper.new
    puts "Today's trending subreddits:"
    Subreddits::TopTrend.all.each_with_index do |s, i|
      puts "#{i+1}. #{s.name}"
    end
    retrieve_info
  end

  def retrieve_info
    puts "Which subreddit would you like to know about today?"
    input = gets.chomp.downcase
    if input == "exit"
      goodbye
    elsif input.to_i > 0
      info = Subreddits::TopTrend.all[input.to_i-1]
      puts "Name: #{info.name}"
      puts "Total Subscribers: #{info.total_users(info.name)}"
      puts "Subscribers Online: #{info.online_users(info.name)}"
      puts "#{(info.online_users(info.name).to_f/info.total_users(info.name).to_f)*100} percent of #{info.name} are online right now."
      puts "URL: #{info.url}"
      retrieve_info
    elsif input.to_i <= 0 || input.to_i == nil || input.to_s != 'exit'
      puts "Please try again! Input the number from the list or type 'exit'"
      retrieve_info
    end
  end

  def goodbye
    puts "Thanks for visiting!"
  end
end
