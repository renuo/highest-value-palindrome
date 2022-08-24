<<-DOC
author: Hermann Witte
email: hermann.witte@alpha-lab.net
Solution for the highest possible palindrome problem as an attachment to my coming application.
DOC
def highest_value_palindrome(input_string, number_of_changes)
  left = 0
  right = input_string.length - 1
  palindrome = input_string.chars
  
  while left < right do
    array = input_string.chars
    if array[left] != array[right] then
      if array[left].to_i > array[right].to_i then
        higher = array[left]
      else 
        higher = array[right]
      end
      palindrome[left] = higher.to_s
      palindrome[right] = higher.to_s
      number_of_changes = number_of_changes - 1
    end
    left = left + 1
    right = right - 1
    if number_of_changes < 0 then
      return nil 
    end
  end 

  left = 0
  right = input_string.length - 1
  while left <= right && number_of_changes != 0 do  
    if number_of_changes > 0 && left == right then
      palindrome[left] = 9
      number_of_changes - 1
    end

    if palindrome[left].to_i < 9 then
      if palindrome[left] == input_string.chars[left] && palindrome[right] == input_string.chars[right] && number_of_changes >= 2 then
        palindrome[left] = 9
        palindrome[right] = 9
        number_of_changes = number_of_changes -2
      else 
        if palindrome[left] != input_string.chars[left] || palindrome[right] != input_string.chars[right] && number_of_changes >= 1 then
          palindrome[left] = 9
          palindrome[right] = 9
          number_of_changes = number_of_changes -1
        end
      end
    end

    left = left + 1
    right = right - 1
  end
  return palindrome.join(', ').tr(' ', '').tr(',','')
end
