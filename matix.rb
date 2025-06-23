glyphset = "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴヵヶヷヸヹヺ・ーヽヾヿ"
broken = "！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞￠￡￢￣￤￥￦"
colors = ["\e[38;5;15m","\e[38;5;46m","\e[38;5;40m","\e[38;5;34m","\e[38;5;28m","\e[38;5;22m","\e[38;5;0m"]
terminal_size = `stty size`.scan(/\d+/).map { |s| s.to_i }.reverse
height = terminal_size[1]
width = terminal_size[0]

puts "\e[38;5;156m ###############no resto id\e[0m"

# for a in 1..5 do
#   for b in 1..5 do
#     print "#{colors[b-1]}#{glyphset[rand(glyphset.length)]}\e[0m"
#   end
#   print "\n"
# end
for b in 0..height
  puts b
end

matix = Hash.new(0)

loop do
  col = rand(5)
  glyph = glyphset[rand(glyphset.length)]
  #if the key exists, get the current value and add one, place a white glyph in that position
  if matix.has_key?(col)
    matix[col] = matix[col]+1
    # print "#{matix[col]};#{col}H #{glyph} A"
    print "\33[#{matix[col]};#{col}H#{colors[0]} #{glyph}"
    # for c in matix[col].downto(0) do
    #   #go back up the rain, decide whether or not to change glyphs along the way
    #   print "\33[#{c};#{matix[col]}H#{colors[matix[col]-c]} #{glyph}"
    # end
  else
  #if the key doesn't exist, add it, place a white glyph at top of column and move on
    matix[col]=1
    print "\33[1;#{col}H #{glyph}"

  end
  # line = rand(height)
  # print "\33[0;#{col}H A"
  sleep(1.0/24.0)
end