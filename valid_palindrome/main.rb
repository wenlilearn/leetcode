=begin
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

For example,
"A man, a plan, a canal: Panama" is a palindrome.
"race a car" is not a palindrome.

Note:
Have you consider that the string might be empty? This is a good question to ask during an interview.

For the purpose of this problem, we define empty string as valid palindrome.

=end

module Main
# @param {String} s
# @return {Boolean}
  def is_palindrome(s)
      if s.empty?
        return true
      end

      s.gsub!(/[^a-zA-Z0-9]*/, "").downcase!
      s.reverse == s
  end
end
