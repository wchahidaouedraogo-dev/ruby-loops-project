def signup
  puts "Définis ton mot de passe :"
  print "> "
  return gets.chomp
end

def login(password)
  attempt = ""
  while attempt != password
    puts "Entre ton mot de passe :"
    print "> "
    attempt = gets.chomp
    puts "Mot de passe incorrect." if attempt != password
  end
end

def welcome_screen
  puts "Bienvenue dans ta zone secrète 🕵🏽‍♀️"
  puts "Voici les infos top secrètes..."
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform
