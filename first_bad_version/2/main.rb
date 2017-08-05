=begin
 You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which will return whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.
=end

module Main
# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

  # @param {Integer} n
  # @return {Integer}
  def first_bad_version(n)
    if n == 1
      return is_bad_version(1) && 1
    end

    s = 1
    e = n

    while(s + 1 < e)
      m = (s + e) / 2

      if is_bad_version(m)
        e = m
      else
        s = m
      end
    end

    if is_bad_version(s)
      return s
    end

    if is_bad_version(e)
      return e
    end
  end
end
