three = '3'
words = <<~TESTHERE
  Line one of the text
  line two of the text
  line #{three} of the text
  TESTHERE
puts words