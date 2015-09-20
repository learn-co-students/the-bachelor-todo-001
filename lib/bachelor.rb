def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      value.each do |contestant|
        if contestant["status"] == "Winner"
          winner_name_arr = contestant["name"].split
          return winner_name_arr[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  avg_age_arr = []
  sum = 0
  avg = 0
  data.each do |key, value|
    if key == season
      value.each do |contestant|
        avg_age_arr << contestant["age"].to_f
      end
    end
  end
  avg_age_arr.each { |x| sum += x }
  avg = sum / avg_age_arr.length
  avg.round
end
