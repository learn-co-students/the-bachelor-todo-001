require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |cycle, contestants|
    if cycle == season
      contestants.each do |details|
        details.each do |key, value|
          if value == "Winner"
            return data[cycle][0]["name"].split[0]
          else
            nil
          end
        end
      end
    else
      nil
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |cycle, contestants|
    i = 0 
    while i < contestants.length do 
      if data[cycle][i]["occupation"] == occupation
        return data[cycle][i]["name"]
      else
        i += 1
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |cycle, contestants|
    contestants.each do |details|
      details.each do |key, value|
        if value == hometown
          counter += 1
        else 
          nil
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |cycle, contestants|
    i = 0
    while i < contestants.length
      if data[cycle][i]["hometown"] == hometown
        return data[cycle][i]["occupation"]
      else
        i += 1
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  data.each do |cycle, contestants|
    if cycle == season
      i = 0
      while i < contestants.length
        sum += data[cycle][i]["age"].to_i
        i += 1
      end
      return (sum.to_f/contestants.length).round
    else
      nil
    end
  end
end
