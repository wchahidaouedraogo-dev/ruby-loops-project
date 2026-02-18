def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide !"
  puts "Combien d'étages ?"
  print "> "
  height = gets.chomp.to_i

  height.times do |i|
    puts "#" * (i + 1)
  end
end

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide !"
  puts "Combien d'étages ?"
  print "> "
  height = gets.chomp.to_i

  puts "Voici la pyramide :"
  height.times do |i|
    spaces = " " * (height - i - 1)
    bricks = "#" * (2 * i + 1)
    puts spaces + bricks
  end
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide !"
  puts "Combien d'étages veux-tu ? (nombre impair)"
  print "> "
  height = gets.chomp.to_i

  if height.even?
    puts "Erreur : tu dois choisir un nombre impair !"
    return
  end

  mid = height / 2

  (mid + 1).times do |i|
    spaces = " " * (mid - i)
    bricks = "#" * (2 * i + 1)
    puts spaces + bricks
  end

  mid.times do |i|
    spaces = " " * (i + 1)
    bricks = "#" * (2 * (mid - i - 1) + 1)
    puts spaces + bricks
  end
end

def perform
  wtf_pyramid
end

perform
