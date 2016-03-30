def get_first_name_of_season_winner(data, season)
 name = nil
 data[season].each {|item| if item["status"]=="Winner"
 name = item["name"]
 break
 end
 }
 name.split[0]# code here
end

def get_contestant_name(data, occupation)
  data.each_value {|item| item.each { |i| if
   i["occupation"] == occupation
  return i["name"]
  end
    }
  }# code here
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each_value {|arr| arr.each {|girl_hash| if girl_hash ["hometown"] == hometown
  counter +=1
  end
    }
  }
  counter# code here
end

def get_occupation(data, hometown)
  data.each_value {|arr| arr.each {|girl_hash| if girl_hash ["hometown"]== hometown
  return girl_hash ["occupation"]
  end
    }
  }# code here
end

def get_average_age_for_season(data, season)
  age_sum = 0.0
  data[season].each {|girl_hash| age_sum += (girl_hash ["age"]).to_f }
  (age_sum/data[season].length).round# code here
end
