require 'pry'
require 'JSON'

def get_first_name_of_season_winner(data, season)
  name_string = []
  data.each do |season_name, details|
    if season_name == season
      details.each do |x|
        x.each do |attribute, answer|
          if attribute == "name"
            name_string = answer.split(" ")
            return name_string[0]
          end
        end
      end
    end
  end
  return name_string[0]
end

#get_first_name_of_season_winner(JSON.parse(File.read('spec/fixtures/contestants.json')),"Clare Crawley")

def get_contestant_name(data, occupation)
    data.each do |season_name, details|
      details.each do |x|
          if x["occupation"] == occupation
            return x["name"]
          end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_name, details|
    details.each do |x|
      if x["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_name, details|
    details.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  count = 0
  data.each do |season_name, details|
    if season_name == season
      details.each do |x|
        total += x["age"].to_f
        count += 1
      end
    end
  end
  mean = total / count
  return mean.round    
end
