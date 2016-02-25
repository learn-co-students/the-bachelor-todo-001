require 'pry'

def get_first_name_of_season_winner(data, season)
  # Return first name of a season's winner
  the_winner = ""
  data.each do |seasons, contestants|
    if seasons == season
      # contestants is an array of people
      contestants.each do |contestant_data|
        # Inside the array:
        contestant_data.collect do |c_key, c_value|
          # binding.pry
          if (c_key == "status") && c_value == "Winner"
            # binding.pry
            return the_winner << contestant_data["name"].split.shift
          end
        end
      end
    end
  end
end

=begin
Build a method, get_contestant_name, that takes in the data hash and
an occupation string and returns the name of the woman who has that
occupation.
=end
def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |contestant_data|
      contestant_data.each do |c_key, c_value|
        if contestant_data["occupation"] == occupation
          return contestant_data["name"]
        end
      end
    end
  end
end

=begin
Build a method, count_contestants_by_hometown, that takes in two
arguments––the data hash and a string of a hometown. This method
should return a counter of the number of contestants who are from that
hometown. How will you keep track of contestants from a particular
hometown? Think back to our looping lessons in which we set a
counter variable equal to 0 and incremented that counter under certain
conditions.
=end

def count_contestants_by_hometown(data, hometown)
  hometown_contestants = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant_data|
      contestant_data.each do |c_key, c_value|
          if (c_key == "hometown" && (contestant_data["hometown"] == hometown))
            hometown_contestants += 1
          end
      end
    end
  end
  hometown_contestants
end

=begin
Build a method get_occupation, that takes in two arguments––the data hash and a string of a
hometown. It returns the occupation of the first contestant who hails from that hometown.
=end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestant_data|
      contestant_data.each do |c_key, c_value|
        if contestant_data["hometown"] == hometown
          return contestant_data["occupation"]
        end
      end
    end
  end
end

=begin
Build a method, get_average_age_for_season, that takes in two arguments––the data hash and a
string of a season. Iterate through the hash and return the average age of all of the
contestants for that season.
* How will you iterate down into the level of the hash that contains each contestant's age?
* How will you collect the ages of each contestant and average them? Remember that the values of
the "age" keys are not numbers, they are strings. How do we convert strings to numbers in Ruby?
* Remember that dividing integers in Ruby always rounds down. In this case though, we want the
normal math sort of rounding (where .5 and higher rounds up), instead. Consider the difference between to_f and to_i.
=end

# arr = [5, 6, 7, 8]
# arr.inject{ |sum, el| sum + el }.to_f / arr.size
# => 6.5

def get_average_age_for_season(data, season)
  contestants_average = []
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant_data|
        contestant_data.each do |c_key, c_value|
          if c_key == "age"
            contestants_average << contestant_data["age"].to_i
          end
        end
      end
    end
  end
  average = 0
  contestants_average.each do |i|
    average += i
  end
  avg = ((average * 1.0) / contestants_average.size)
  if ((avg % 1) >= 0.5)
    avg = avg.ceil
  else
    avg = avg.floor
  end
  avg
end







#
#
#



