#def say_hello(name)
# "Hi #{name}!"
#end
#puts "Enter your name:"
#users_name = gets.strip
#puts say_hello(users_name)
  
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
  
  def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
  end
  
  def list(songs)
    songs.each_with_index do |song, index| 
      puts "#{index + 1}. #{song}"
    end
  end
  
  def play(songs)
    puts "Please enter a song name or number:"
    song_n = gets.strip
    num = song_n.to_i - 1 
    if num < 0 && songs.include?(song_n)
      index = songs.index(song_n)
      puts "Playing #{songs[index]}"
    elsif num >= 0 && songs[num] != nil
      puts "Playing #{songs[num]}"
    elsif song_n == "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
  
  def exit_jukebox
    puts "Goodbye"
  end
  
  def run(songs)
    puts "Please enter a command:"
    input = 0
    while input != "exit"
    input = gets.strip
      if input == "help"
        help
      elsif input == "play"
        play(songs)
      elsif input == "list"
        list(songs)
      elsif input == "exit"
        exit_jukebox
        exit
      end
    end
  end
  
  
  
  
  