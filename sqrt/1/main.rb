=begin
Implement int sqrt(int x).

Compute and return the square root of x.
=end

module Main
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  if x == 0 || x == 1
    return x
  end

  s = 1
  e = x

  while(s + 1 < e) do
    m = (s + e) / 2

    if m ** 2 == x
      s = m
    elsif(m ** 2 < x)
      s = m
    else
      e = m
    end
  end

  if (s ** 2 <= x && (s + 1) ** 2 > x)
    return s
  elsif ((s - 1) ** 2 <= x && s ** 2 > x)
    return s
  end

  if (e ** 2 <= x && (e + 1) ** 2 > x)
    return e
  elsif ((e - 1) ** 2 <= x && e ** 2 > x)
    return e
  end
end

end
