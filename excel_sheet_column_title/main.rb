=begin
Given a positive integer, return its corresponding column title as appear in an Excel sheet.

For example:

    1 -> A
    2 -> B
    3 -> C
    ...
    26 -> Z
    27 -> AA
    28 -> AB
=end

=begin
#iterative solution
module Main
  # @param {Integer} n
  # @return {String}
  def convert_to_title(n)
    if n == nil || n == 0
      return ""
    end

    res = ""
    while(n > 0) do
      letter = (n - 1) % 26 + "A".ord
      res = "#{letter.chr}" + res
      n = (n / 26.0).ceil - 1
    end

    res
  end
end
=end

module Main
  # @param {Integer} n
  # @return {String}
  def convert_to_title(n)
    if n == nil || n == 0
      return ""
    end

    res = ""
    while(n > 0) do
      letter = (n - 1) % 26 + "A".ord
      res = "#{letter.chr}" + res
      n = (n / 26.0).ceil - 1
    end

    res
  end

  def do_convert_to_title(n, res)
    if n == 0
      return res
    end

    letter = (n - 1) % 26 + "A".ord
    res = "#{letter.chr}#{res}"

    do_convert_to_title((n / 26.0).ceil - 1, res)
  end
end
