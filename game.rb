  def jyanken_game
      puts "じゃんけん..."
      puts "0(グー),1(チョキ),2(パー),3(戦わない)"
      
      my_hand = gets.to_i
      puts my_hand
     
      puts "ホイ！"
     
      puts "----------------"
      
      if my_hand == 3
        puts "ゲームを終了します"
      elsif my_hand > 3
        puts "正しい数値を入力してください"
        jyanken_game
      end
      
      com_hand = rand(3)
      jyankens = ["グー","チョキ","パー"]
      
      puts "----------------"
      puts "あなた：#{jyankens[my_hand]}を出しました"
      puts "相手：#{jyankens[com_hand]}を出しました"
      puts "----------------"
      
      if my_hand == com_hand
        puts "あいこで"
        jyanken_game
      elsif (my_hand = 0 && com_hand = 1) || (my_hand = 1 && com_hand = 2) || (my_hand = 2 && com_hand = 0)
        attimuite_hoi 
        return "win"
      elsif (my_hand = 0 && com_hand = 2) || (my_hand = 1 && com_hand = 0) || (my_hand = 2 && com_hand = 1)
        attimuite_hoi 
        return "lose"
      end
      
  end  
  
  def attimuite_hoi 
    puts "あっちむいて〜"
    puts "0(上)1(下)2(左)3(右)"
    my_direction = gets.to_i
    puts my_direction
    puts "ホイ！"
    puts "----------------"
      
    com_direction = rand(4)
    directions=["上","下","左","右"]
      
    puts "あなた：#{directions[my_direction]}を向きました"
    puts "相手：#{directions[com_direction]}を向きました"
       
    if (my_direction == com_direction) && (jyanken_game == "win")
        puts "勝ち"
    elsif (my_direction == com_direction) && (jyanken_game == "lose")
        puts "負け"
    else 
        jyanken_game
    end
  end
  
  jyanken_game
  

 
  