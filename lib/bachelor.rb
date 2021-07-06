require "pry"

def get_first_name_of_season_winner(data, season)
  winner = nil
  
  data[season].each do |contestant|
    #binding.pry
    if contestant["status"] == "Winner"
      winner = contestant["name"].split[0]
      break
    end
  end
  
  winner
end

def get_contestant_name(data, occupation)
  output = nil
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        output = contestant["name"]
        break
      end
    end
  end
  
  output
end

def count_contestants_by_hometown(data, hometown)
  total_contestants = 0
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        total_contestants += 1
      end
    end
  end
  
  total_contestants
end

def get_occupation(data, hometown)
  occupation = nil
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        occupation = contestant["occupation"]
        break
      end
    end
  end
  
  occupation
end

def get_average_age_for_season(data, season)
  age_total = 0
  
  data[season].each do |contestant|
    age_total += contestant["age"].to_f
  end
  
  (age_total / data[season].count).round
end
