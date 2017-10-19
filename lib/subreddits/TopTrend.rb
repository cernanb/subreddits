require 'pry'

class Subreddits::TopTrend
    attr_accessor :name, :url, :total_users, :online_users, :information
    @@all = []

    def initialize(name, url)
      @name = name
      @url = url
      @@all << self

    end

    def self.all
      @@all
    end

    def self.total_users_above(num)
      #this method will return an array of all TopTrend objects that have more total_users than the num passed in
      total_users = []
      self.all.each do |user|
        #binding.pry
        total_users << user.total_users.gsub("," , "").to_i
      end
      above_num = []
      total_users.each do |total|
        if total > num
          above_num << total
        end
      end
      above_num #array each do, #if above number
    end

  end
