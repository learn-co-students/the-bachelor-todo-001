require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |x|
    if x["status"] == "Winner"
      return x["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key,value|
    value.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |key, value|
    value.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |x|
    ages << x["age"].to_i
  end

  sum = ages.inject(:+)/ages.length.to_f
  return sum.round
end
