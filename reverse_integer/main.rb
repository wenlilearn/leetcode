# @param {Integer} x
# @return {Integer}
class Main	
	def reverse(x)
	    x = x.to_s(10)
	    num = if x[0] == "-"
			("-" + x[1..-1].reverse).to_i
		    else
			x.reverse.to_i
		    end

	    if num > (2 ** 31 - 1) || num < (-2 ** 31)
		return 0
	    else
		return num
	    end
	end
end
