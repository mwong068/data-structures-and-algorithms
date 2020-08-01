# sam = 3
# sarah = 5
# difference = 1
# 3 + 1 | 5
# 4 + 3 | 10

def battle(num1, num2, dif):
  day = 1
  p1 = num1 + dif
  p2 = num2
  
  while day != 100:
    p1 += num1
    p2 += num2
    if p2 > p1:
      return day
    day += 1

  return -1


print(battle(3, 5, 4))
print(battle(6, 5, 1))