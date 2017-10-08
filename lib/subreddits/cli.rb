class Subreddits::CLI

  def run
    #get a function of top trending subreddits, under the bottom
    display_subreddits
    retrieve_info
    goodbye
  end

  def retrieve_info
    puts "Which subreddit would you like to know about today?"
    input = gets.chomp.downcase
    if input.to_i > 0
      puts "Name: #{info.name}"
      puts "Total Subscribers: #{info.total}"
      puts "Subscribers Online: #{info.online}"
      puts "URL: #{info.url}"
      retrieve_info
    elsif input.to_1 <= 0 || nil
      puts "Please try again! Press the number or type 'exit'"
    elsif input = 'exit'
      goodbye
    end
  end

  def display_subreddits
    Subreddits::Scraper.new
    Subreddits::TopTrend.all.each_with_index do |s, i|
      puts <<-DOC
      Trending Subreddits:
      #{i+1}. #{s.name}
      DOC
    end
  end

  def goodbye
    puts "Thanks for visiting!"
  end
end
