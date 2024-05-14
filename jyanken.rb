def janken
    puts "じゃんけん..."
    puts "0(グー) 1(チョキ) 2(パー)を入力してください"
    player_hand = gets.chomp.to_i
  
    unless [0, 1, 2].include?(player_hand)
      puts "0~2の数字を入力してください"
      return
    end
  
    puts "あなたの手: #{player_hand}"
  
    computer_hand = rand(3)
    puts "相手の手: #{computer_hand}"
  
    result = (player_hand - computer_hand + 3) % 3
  
    case result
    when 0
      puts "あいこです"
      janken
    when 1
      puts "あなたの勝ちです"
  
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)を入力してください"
      player_direction = gets.chomp.to_i
  
      unless [0, 1, 2, 3].include?(player_direction)
        puts "0~3の数字を入力してください"
        return
      end
  
      computer_direction = rand(4)
      puts "相手の向く方向: #{computer_direction}"
  
      if player_direction == computer_direction
        puts "あなたが勝ちました！"
        exit
      else
        puts "まだ続けます"
        janken
      end
    when 2
      puts "あなたの負けです"
  
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)を入力してください"
      player_direction = gets.chomp.to_i
  
      unless [0, 1, 2, 3].include?(player_direction)
        puts "0~3の数字を入力してください"
        return
      end
  
      computer_direction = rand(4)
      puts "相手の向く方向: #{computer_direction}"
  
      if player_direction == computer_direction
        puts "あなたが負けました！"
        exit
      else
        puts "まだ続けます"
        janken
      end
    end
  end
  
  janken
  