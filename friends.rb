def get_name(person)
  return person[:name]
end

def get_tv_show(tv)
  return tv[:favourites][:tv_show]
end


def fav_snacks(person, food)
  # if person[:favourites][:snacks][0] == food
  #   return true
  # elsif person[:favourites][:snacks][1] == food
  #   return true
  # else
  #   return false
  # end
  person[:favourites][:snacks].include?(food)
end

def add_friend(person, pal)
  length_inital = person[:friends].length
  person[:friends].push(pal)
  length_after = person[:friends].length
  if length_inital != length_after
    return true
  else
    return false
  end
end

def del_friend(person, pal)
  length_inital = person[:friends].length
  person[:friends].delete(pal)
  length_after = person[:friends].length
  if length_inital != length_after
    return true
  else
    return false
  end
end

def count_monies(peeps)
  count_monies = 0
  for person in peeps
    count_monies += person[:monies]
  end
  return count_monies
end


def lending(value, from_person, to_person)
    value_from_person_start = from_person[:monies]
    value_to_person_start = to_person[:monies]
    value_from_person_end = value_from_person_start - value
    value_to_person_end = value_to_person_start + value
    difference_from = value_from_person_start - value_from_person_end
    difference_to = value_to_person_end - value_to_person_start
    if difference_from == difference_to
      return true
    end
  end

def all_snacks(yumyums)
  answer = ""
  for yums in yumyums
     yums[:favourites][:snacks].each { |yummies| answer = answer + yummies }
  end
  return answer
end

def no_friends(circle)
  nae_friends = Array.new
  for no_mates in circle
    if no_mates[:friends].empty?
    nae_friends.push(no_mates[:name])
    end
  end
  return nae_friends
end
