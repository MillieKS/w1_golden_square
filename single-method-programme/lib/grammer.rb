def grammer_checker(text)
  b = text.split
  return true if b.first == b.first.capitalize && (b.last[-1] == ".") || (b.last[-1] == "?") || (b.last[-1] == "!")
  false
end