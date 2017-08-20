def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].partition(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  contestant_average = []
  data[season].each do |contestant_hash|
    contestant_average << contestant_hash["age"].to_i
  end
  (contestant_average.inject(0.0) {|sum, x| sum + x } / contestant_average.size).round
end
