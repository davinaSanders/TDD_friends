def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return true if person[:favourites][:things_to_eat].include?(food)
end

def add_friend(person, name)
  person[:friends].push(name)
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def total_money(monies)
  total = 0
  for person in monies
  total += person[:monies]
  end
  return total
end


def money_loan(person_1, person_2, amount)
  person_1[:monies]+= amount
  person_2[:monies]-= amount
end

def total_favourite_food(array)
  food_array = []
  for person in array
  food_array.push(person[:favourites][:things_to_eat]).flatten!.sort!
  end
  return food_array
end


def look_for_no_friends(array)
  no_friends_array = []
  for person in array
    no_friends_array.push(person[:name]) if person[:friends].empty? 
  end
  return no_friends_array
end
