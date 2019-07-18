require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}"!
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include? input
    puts "Playing #{input}"
  elsif (input.to_i - 1) > -1 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
    return
  else
  puts "Invalid input, please try again"
  end 
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = ""
  until response == "exit"
    puts "Please enter a command:"
    response = gets.chomp
    if response == "help"
      help
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    else
      puts "Please enter an accepted command."
      help
    end
  end
  exit_jukebox
end

# run(songs)