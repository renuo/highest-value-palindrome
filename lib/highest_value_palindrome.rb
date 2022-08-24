def highest_value_palindrome(input_string, number_of_changes)
  chars = input_string.split(//)

  i = 0
  predicted_changes = 0
  length = chars.length

  # Calculating how many moves are necessary to form a palindrome
  while i < length / 2 do
    unless chars[i] == chars[length - 1 - i]
      predicted_changes += 1
    end
    i += 1
  end

  # calculating how many changes more are given to reach a higher number
  more_changes = number_of_changes - predicted_changes

  if more_changes<0
    return nil
  end

  i = 0

  # Changes the numbers from the border to the middle to gain the highest number
  while i < length / 2 do
    if not chars[i] == chars[-1 - i]
      if more_changes > 0 && chars[i] != "9" && chars[-1 - i] != "9"
        # Setts the highest digit to both sides
        chars[i] = "9"
        chars[-1 - i] = "9"

        number_of_changes -= 2
        more_changes -= 1
      else
        # Setts the same number (higher) on both sides
        if chars[i].to_i > chars[-1 - i].to_i
          chars[-1 - i] = chars[i]
          number_of_changes -= 1
        else
          chars[i] = chars[-1 - i]
          number_of_changes -= 1
        end
      end
    elsif more_changes >= 2 && chars[i] != "9"
      # Sets both digits to the highest, even if they match
      chars[i] = "9"
      chars[-1 - i] = "9"
      more_changes -= 2
      number_of_changes -= 2
    end
    i += 1
  end

  # Algorithm ignores if the number in the middle (odd length) can be changed to the highest digit
  # this is the fix
  if number_of_changes > 0 && length % 2 == 1
    chars[length / 2] = "9"
  end

  chars.join
end
