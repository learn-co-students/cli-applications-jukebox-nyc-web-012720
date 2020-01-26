songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts  "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list (songs)
  num=0
  while num<songs.size do 
    puts"#{num+1}. "+"#{songs[num]}"
    num+=1
  end
end


def play (songs)
  puts "Please enter a song name or number: "
  song_choice=gets.strip
  
  if (song_choice.to_i-1).between?(0,songs.length) 
    puts "Playing #{songs[song_choice.to_i-1]}"
 elsif songs.include?(song_choice) 
    puts "Playing #{song_choice}"
 else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run (songs)
  puts "Please enter a command:"
  input=gets.strip
    if input=="list"
      list (songs)
     elsif input=="play"
      play (songs)
     elsif input=="help"
       help
    elsif input=="exit"
    exit_jukebox
    return
  else
    run (songs)
  end      
end
