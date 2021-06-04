# CPUの手を定義
def Cpuhand
  random = rand(1..3)
  case random
  when 1 then 
    hand = "グー"
  when 2 then
    hand = "チョキ"
  when 3 then
    hand = "パー"
  end
  return hand
end

# あなたのの手を定義
def YourHand(hand)
  case hand
    when "g"
      yourhand = "グー"
    when "c"
      yourhand = "チョキ"
    when "p"
      yourhand = "パー"
  end
  return yourhand
end 

# じゃんけんの判定
def Judgement(cpuhand,yourhand)
  if cpuhand == yourhand
    loop{
      puts "あいこで...(press g or c or p)"
      yourhand = YourHand(gets.chomp)
      cpuhand = Cpuhand()
      puts "CPU…#{cpuhand}"
      puts "あなた…#{yourhand}"
      if cpuhand != yourhand
          break
      end
    }
  end
  if cpuhand == "グー" && yourhand == "パー"
    puts "勝ち!"
    return 1
  elsif cpuhand == "グー" && yourhand == "チョキ"
    puts "負け!"
    return 0
  elsif cpuhand == "チョキ" && yourhand == "グー"
    puts "勝ち!"
    return 1
  elsif cpuhand == "チョキ" && yourhand == "パー"
    puts "勝ち!"
    return 0
  elsif cpuhand == "パー" && yourhand == "チョキ"
    puts "勝ち!"
    return 1
  elsif cpuhand == "パー" && yourhand == "グー"
    puts "負け!"
    return 0
  end
end

# じゃんけん処理
win = 0  #勝利数変数
lose = 0 #敗退数変数
puts '何本勝負？(press 1 or 3 or 5)'
input = gets #じゃんけん数をinputに格納
print input.chomp
puts "本勝負を選びました"

# じゃんけん処理ループ
input.to_i.times{|n|
puts ""
puts "#{n + 1}回目"
puts 'じゃんけん…(press g or c or p)' 
yourhandkey = gets
yourhand = YourHand(yourhandkey.chomp)
cpuhand = Cpuhand()
puts "CPU…#{cpuhand}"
puts "あなた…#{yourhand}"
result = Judgement(cpuhand,yourhand)
if result == 0 
  lose += 1
else 
  win += 1
end
puts "#{win}勝#{lose}敗"
if n + 1 == input.to_i
  if win > lose
    puts ""
    puts "結果"
    puts "#{win}勝#{lose}敗であなたの勝ち" 
  else
    puts ""
    puts "結果"
    puts "#{win}勝#{lose}敗であなたの負け"
  end
end
}





