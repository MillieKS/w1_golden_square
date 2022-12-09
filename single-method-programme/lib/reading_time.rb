def calculating_reading_time(text)
  x = text.split.length
  a = x / 200.0
  return "#{a.ceil} minutes"
end