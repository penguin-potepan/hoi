def janken
  player_hand = gets.to_i
  
  program_hand = rand(3)
  
  jankens = ["グー", "チョキ", "パー","戦いません"]
  if player_hand == 3
    puts "戦いません"
    return
  end
  
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  puts "-----------"
  
  if player_hand == program_hand
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    puts "ショ！"
    puts "-----------"
    janken
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです。"
    atti_muite_hoi_win
  else
    puts "あなたの負けです。"
    atti_muite_hoi_lose
    
  end
end

  
first_game = 1
  
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
puts "ホイ！"
puts "-----------"




def atti_muite_hoi_win
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  puts "ホイ！"
  puts "---------"

  player_hoi = gets.to_i

  program_hoi = rand(4)
  
  hoi_course = ["上","下","左","右"]
  
  puts "あなた:#{hoi_course[player_hoi]}"
  puts "相手:#{hoi_course[program_hoi]}"
  
  if player_hoi == program_hoi
    puts "勝ちました"
  else
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    puts "ホイ！"
    puts "-----------"
    janken
  end
end

def atti_muite_hoi_lose
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  puts "ホイ！"
  puts "---------"

  player_hoi = gets.to_i

  program_hoi = rand(4)
  
  hoi_course = ["上","下","左","右"]
  
  puts "あなた:#{hoi_course[player_hoi]}"
  puts "相手:#{hoi_course[program_hoi]}"
  
  if player_hoi == program_hoi
    puts "負けました"
  else
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    puts "ホイ！"
    puts "-----------"
    janken
  end
end


if first_game == 1
  janken
end
