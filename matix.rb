def lazy_printable_random_utf8(mb=3)
  return enum_for(__callee__, mb).lazy unless block_given?

  # determine the maximum codepoint based on the number of UTF-8 bytes
  max = [0x80, 0x800, 0x10000, 0x110000][mb.pred]

  loop do
    char = rand(max).chr('UTF-8')

    yield char if char.match?(/[[:print:]]/)
  rescue RangeError
  end
end

st = lazy_printable_random_utf8(5)
puts "\e[38;5;156m ###############no resto id#{st}\e[0m"
