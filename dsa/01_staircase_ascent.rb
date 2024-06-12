def staircase_ascent(n)
  return 1 if n == 0
  return 1 if n == 1
  return 2 if n == 2

  staircase_ascent(n - 1) + staircase_ascent(n - 2) + staircase_ascent(n - 3)
end
