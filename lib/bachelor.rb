require 'pry'
def get_first_name_of_season_winner(data, season)
  seasonwinner = ""
  data.each do |seasonnum, contestants|
    if seasonnum == season
      contestants.each do |acontestant|
        acontestant.each do |header, info|
          if header == "status" && info =="Winner"
          seasonwinner = acontestant["name"].split[0]
          end
        end
      end
    end
  end
  return seasonwinner
end


def get_contestant_name(data, occupation)
person = ""
data.each do |season_num, contestants|
  contestants.each do |acontestant|
    acontestant.each do |key, value|
      if key == "occupation" && value == occupation
        person = acontestant["name"]
      end
    end
  end
end
return person
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num, contestants|
    contestants.each do |acontestant|
      acontestant.each do |key, value|
        if key == "hometown" && value == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  person = ""
  criteria = false
  data.each do |season_num, contestants|
    contestants.each do |acontestant|
      acontestant.each do |key, value|
        if key == "hometown" && value == hometown && criteria == false
          person = acontestant["occupation"]
          criteria = true
        end
      end
    end
  end
  return person
end

def get_average_age_for_season(data, season)
  # code here
  avg_age = 0
  counter = 0
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant|
        contestant.each do |key, value|
          if key == "age"
            avg_age += value.to_f
            counter += 1
          end
        end
      end
    end
  end
  return (avg_age / counter).round
end
