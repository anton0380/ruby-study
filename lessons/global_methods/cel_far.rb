def cel2far(cel)
  cel*9.0/5 + 32
end

def far2cel(far)
  (far - 32)*5.0/9
end

p cel2far(2)
p far2cel(2)