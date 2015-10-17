def get_first_name_of_season_winner(data, season)
  winner_name = ""
  first_name = ""
  data[season].each do |contestant_info|
    if contestant_info["status"] == "Winner"
      winner_name = contestant_info["name"]
      first_name = winner_name.split[0]
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestant_info|
    contestant_info.each do |info|
      if info["occupation"] == occupation
        name = info["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_info|
    contestant_info.each do |info|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season, contestant_info|
    contestant_info.each do |info|
      if info["hometown"] == hometown
        occupation << info["occupation"]
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  count = 0
  age_sum = 0
  data[season].each do |contestant_info|
    age_sum += contestant_info["age"].to_i
    count += 1
  end
  avg_age_for_season = (age_sum/count.to_f + 0.5).to_i
end
