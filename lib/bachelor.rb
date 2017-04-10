require 'pry'

def get_first_name_of_season_winner(data, season)

  data[season].each do |value|
    if value["status"] == "Winner"
      return value["name"].split(' ')[0]
      break
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,season_data|
    season_data.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
        break
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count=0
  data.each do |season,season_data|
    season_data.each do |contestant_info|
      if contestant_info["hometown"] == hometown
      hometown_count+=1
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
   data.each do |season,season_data|
    season_data.each do |contestant_info|
      if contestant_info["hometown"] == hometown
      return contestant_info["occupation"]
      break
      end
    end
  end
end

def get_average_age_for_season(data, season)
    contestant_count=0
    total_age = 0.0
  data[season].each do |season_data|
    season_data.each do |contestant_info|
      total_age = total_age + season_data["age"].to_f
      contestant_count+=1
    end
  end
  return (total_age/contestant_count).round
end
