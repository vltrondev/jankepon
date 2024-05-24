def jankepon
  options = ["scissors", "rock", "papper"]
  machine = 0
  user = 0
  button = true
  while button
    machine_decition = options.sample
    print "Enter your decition:"
    decide = gets.chomp
    puts "Machine decition: #{machine_decition}"
    if decide == machine_decition
      machine += 1
      user += 1
      puts "machine point: #{machine}"
      puts "user point: #{user}"
    # User and machine points
    elsif decide == "rock" && machine_decition == "scissors"
      user += 1
      puts "machine point: #{machine}"
      puts "user point: #{user}"
    elsif decide == "scissors" && machine_decition == "papper"
      user += 1
      puts "machine point: #{machine}"
      puts "user point: #{user}"
    elsif decide == "papper" && machine_decition == "rock"
      user += 1
      puts "machine point: #{machine}"
      puts "user point: #{user}"
    else
      machine += 1
      puts "machine point: #{machine}"
      puts "user point: #{user}"

    end
    # Condition for won user
    user_won =case user
      when 3
        puts "user's win"
        button = false
      end
    # Condition for won machine
    machine_won = case machine
      when 3
        puts "machine's win"
        button = false
      end
  #condition points won
  end
  print "-----End of game-----"
end


jankepon()
