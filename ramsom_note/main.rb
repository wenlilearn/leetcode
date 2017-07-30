=begin
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

Each letter in the magazine string can only be used once in your ransom note.

Note:
You may assume that both strings contain only lowercase letters.

canConstruct("a", "b") -> false
canConstruct("aa", "ab") -> false
canConstruct("aa", "aab") -> true

=end

module Main
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    magazine_chars = {}

    magazine.split("").each do |char|
      magazine_chars[char] ||= 0
      magazine_chars[char] += 1
    end

    ransom_note.split("").each do |char|
      if magazine_chars[char] == nil || magazine_chars[char] == 0
        return false
      end

      magazine_chars[char] -= 1
    end

    return true
end
end
