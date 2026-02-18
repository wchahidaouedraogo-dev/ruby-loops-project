def roll_dice
  rand(1..6)
end

def play_game
  step = 0
  turns = 0

  while step < 10
    turns += 1
    dice = roll_dice
    if dice == 5 || dice == 6
      step += 1
      puts "Tu avances ! Marche #{step}"
    elsif dice == 1
      step -= 1 if step > 0
      puts "Tu recules ! Marche #{step}"
    else
      puts "Rien ne se passe. Marche #{step}"
    end
  end

  puts "🎉 Bravo ! Tu as atteint la 10ème marche !"
  turns
end

def average_finish_time
  total_turns = 0
  100.times { total_turns += play_game }
  puts "Nombre moyen de tours pour finir : #{total_turns.to_f / 100}"
end

def perform
  average_finish_time
end

perform
