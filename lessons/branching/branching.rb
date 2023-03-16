# frozen-string-literal: true

COLORS = %w[красный оранжевый жёлтый зелёный голубой синий фиолетовый]

def colors(num)
  (1..COLORS.size).include?(num) ? COLORS[num - 1] : nil
end
p colors(0)
p colors(7)
p colors(8)

WEEK = %w[понедельник вторник среда четверг пятница суббота воскресенье]
def week(num)
  (1..WEEK.size).include?(num) ? WEEK[num - 1] : nil
end
p week(2)
2