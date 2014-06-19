require_relative "testing_library"

goal_message = "GOOOOOOOAL!!!!"
team_list = "Brazil, Mexico, Cameroon, Croatia, Netherlands, Chile, Australia, Spain, Germany, Ghana, US, Protugal"
long_string = <<-world_cup_news
  Clint, Dempsey, put, the, U.S.,
  ahead, in, the, first, minute,
  of, its, World, Cup, opener.
world_cup_news

# enter your solutions inside the methods
def goal(message)
  message * 2
end

def generate_an_array_of_teams(teams)
  team_list_arr = teams.split(/, */)
end

def number_of_teams(teams)
  teams_arr = generate_an_array_of_teams (teams)
  teams_arr.length
end

def return_australia(teams)
  teams_arr = generate_an_array_of_teams (teams)
  teams_arr.each do |team|
    if team == 'Australia'
      return team
    end
  end

end

def starts_with_C(teams)
  team_arr = generate_an_array_of_teams (teams)
  team_arr_C = team_arr.grep(/^#{'C'}/)
  return team_arr_C
end

def block_string_to_single_line(block_string)
  new_block_string = block_string.split(' ').join('').split(',').join(' ')
  new_block_string
end

def capitalize_every_third_word(block_string)
  new_block_string = block_string_to_single_line(block_string)
  new_block_string_arr = new_block_string.split(' ')
  capitalized_words = []
  new_block_string_arr.each do |word|
    x = new_block_string_arr.index(word)
    if x % 3 == 0
      word.upcase
      capitalized_words.push(word.capitalize)
    else
      capitalized_words.push(word.downcase)
    end
  end
  print "I can't get the second 'the' to downcase"
  capitalized_words= capitalized_words.join(' ')
  puts
  print capitalized_words
  return capitalized_words
end

check("goal method", goal(goal_message) == "GOOOOOOOAL!!!!GOOOOOOOAL!!!!")
check("generate_an_array_of_teams method",
      generate_an_array_of_teams(team_list) == ["Brazil", "Mexico", "Cameroon", "Croatia", "Netherlands", "Chile", "Australia", "Spain", "Germany", "Ghana", "US", "Protugal"])
check("number_of_teams method", number_of_teams(team_list) == 12)
check("return_australia method", return_australia(team_list) == 'Australia')
check("starts_with_C method", starts_with_C(team_list) == ['Cameroon', 'Croatia', 'Chile'])
check("block_string_to_single_line method",
      block_string_to_single_line(long_string) == "Clint Dempsey put the U.S. ahead in the first minute of its World Cup opener.")
check("capitalize_every_third_word method",
      capitalize_every_third_word(long_string) == "Clint dempsey put The u.s. ahead In the first Minute of its World cup opener.")

