glyphset = "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴヵヶヷヸヹヺ・ーヽヾヿ！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞￠￡￢￣￤￥￦"
colors = ["\e[38;5;15m","\e[38;5;46m","\e[38;5;40m","\e[38;5;34m","\e[38;5;28m","\e[38;5;22m","\e[38;5;0m"]
a = `stty size`.scan(/\d+/).map { |s| s.to_i }.reverse

puts "\e[38;5;156m ########{a}########no resto id\e[0m"

for a in 1..5 do
  for b in 1..5 do
    print "#{colors[b-1]}#{glyphset[rand(glyphset.length)]}\e[0m"
  end
  print "\n"
end