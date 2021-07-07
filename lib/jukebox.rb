songs = 
[
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
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

# puts "Please neter a command:"
# command = gets.strip

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end 

def play (song_array)
  puts  "Please enter a song name or number:"
  song_choice = gets.strip
  index_to_play = nil 
  
  if  (song_choice.to_i).between?(1, song_array.length)
    x = song_choice.to_i
    index_to_play = x -1
    puts "Playing #{song_array[index_to_play]}"
    
  elsif song_array.include? song_choice
    index_to_play = song_array.index(song_choice)
    puts "Playing #{song_array[index_to_play]}"
    
  else 
    puts "Invalid input, please try again"
  end
  
end 

def list (song_array)
  i = 0 
  while i < song_array.length 
    puts "#{i+1}. #{song_array[i]}"
    i +=1
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs) 
  puts "Please enter a command:" 
  input_ = gets.strip 
      if (input_ == "exit" ) 
        exit_jukebox 
        return
      elsif input_ == "help"
        help 
        run(songs)
      elsif input_ == "list" 
        list(songs)
        run(songs)
      # end 
      elsif input_ == "play" 
        play(songs)
        run(songs)
      else 
        run(songs)
      end 
end 






