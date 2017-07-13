=begin
You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Note: Given n will be a positive integer.
=end

module Main
  # @param {Integer} n
  # @return {Integer}
  def climb_stairs(n)
    if n == 0
      return 1
    elsif n == 1
      return 1
    elsif n == 2
      return 2
    end

    mem = {0 => 1, 1 => 1, 2 => 2}

    do_climb_stairs(n, 0, mem)
  end

  def do_climb_stairs(n, total, mem)
    if n < 0
      return 0
    elsif n == 0
      return 1
    end

    if(mem.key?(n))
      return mem[n]
    else
      total = do_climb_stairs(n - 1, total, mem) + do_climb_stairs(n - 2, total, mem)
      mem[n] = total
    end
  end
end
