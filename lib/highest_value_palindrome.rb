def highest_value_palindrome(input_string, number_of_changes)
    iterations = input_string.length / 2
    palindrome = input_string.chars.map(&:to_i)
    input_string = palindrome.map(&:clone)

    # Create palindrome
    for i in 0..iterations
        if palindrome[i] != palindrome[-i-1]
            palindrome[i] = palindrome[-i-1] = [palindrome[i], palindrome[-i-1]].max
            number_of_changes -= 1
        end
    end

    # Exit if too many changes have been made
    if number_of_changes < 0
        return nil
    end

    # Change palindrome to the highest value if there are any changes left
    for i in 0..iterations
        if number_of_changes != 0 && palindrome[i] != 9
            if number_of_changes > 0 && i === iterations
                palindrome[i] = 9
                number_of_changes - 1
            end
            if palindrome[i] === input_string[i] && palindrome[-i-1] === input_string[-i-1]
                if number_of_changes > 1
                    palindrome[i] = palindrome[-i-1] = 9
                    number_of_changes -= 2
                end
            elsif number_of_changes > 0
                palindrome[i] = palindrome[-i-1] = 9
                number_of_changes -= 1
            end
        end
    end

    palindrome.join
end
