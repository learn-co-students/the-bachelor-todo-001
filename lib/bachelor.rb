def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |season_key, contestants|
    if season_key == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split(' ')[0]
        end
      end
    end
  end

  winner
end

def get_contestant_name(data, occupation)
  # code here
  winner = ""
  data.each do |season_key, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        winner = contestant["name"]
      end
    end
  end

  winner
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num_contestants = 0
  data.each do |season_key, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        num_contestants += 1
      end
    end
  end

  num_contestants
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_key, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  avg_age = 0.0
  data.each do |season_key, contestants|
    if season_key == season
      contestants.each do |contestant|
        total_age += contestant["age"].to_i
      end
      avg_age = total_age.to_f / contestants.length.to_f
    end
  end

  avg_age.round
end
