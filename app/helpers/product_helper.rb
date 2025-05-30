module ProductHelper
  def missing_letter(name)
    seen = {}
    first_char = nil
    lowest_ord = 123
    
    name.each_byte do |byte|
      byte += 32 if byte.between?(65, 90)

      if byte.between?(97, 122)
        unless seen.key?(byte)
          seen[byte] = true
          if byte < lowest_ord
            lowest_ord = byte
            first_char = byte.chr
          end
        end
      end
    end

    return '_' if seen.empty?

    (lowest_ord..122).each do |ord|
      return ord.chr unless seen.key?(ord)
    end

    '_'
  end
end
