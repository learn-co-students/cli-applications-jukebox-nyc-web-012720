# Add your code here
def help
  puts   " I accept the following commands:"
  puts   "- help : displays this help message"
  puts   "- list : displays a list of songs you can play"
  puts   "- play : lets you choose a song to play"
  puts   "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selected = gets.strip
  song_length = songs.length
  user_selected_number = user_selected.to_i - 1
  if user_selected_number.between?(0, song_length)
    puts "Playing #{songs[user_selected_number]}"
  elsif songs.include? user_selected
    puts "Playing #{user_selected}"


  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  run = true

  while run
    puts "Please enter a command:"
    command = gets.strip

    if command == 'exit'
      exit_jukebox
      run = false

    elsif command == "help"
      help

    elsif command == "list"
      list(songs)

    elsif command == "play"

      play(songs)


    end

  end


end
