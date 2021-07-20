## Highest Value Palindrome

Welcome to the Ruby challenge. Fork the repository and submit your solution as a pull request.

### Task
You are to develop the function `highest_value_palindrome` located at `lib/highest_value_palindrome.rb` so that when given an input string and a maximum number of changes it returns the highest value palindrome. A palindrome is a string which reads the same from both sides. The highest value describes the value the palindrome would represent if it was converted to an integer. Changing the value of a single digit in the number is considered a `change`. I.e. turning `1234` into `1256` "used" two changes.

### Function description
The function has two input parameters: `input_string` and `number_of_changes`. The first is a string made up of numbers from `0` to `9`. The second one describes the maximum number of changes required to turn said string into the highest value palindrome possible. If no polindrome is possible the ouput of the function should be `nil`. Leading `0`'s count as normal numbers and the length of the ouput string must match the length of the input string.

For uncertainties or questions please open an issue. Contributions via pull request are also welcome!

To verify your implementation please run the tests.

### Examples
```ruby
highest_value_palindrome(3943, 1) # => 3993
highest_value_palindrome(092282, 3) # => 992299
highest_value_palindrome(0011, 1) # => nil
```
For more examples have a look at the tests.

### Constraints
* Only built in gems and functions are to be used.
* Only `highest_value_palindrome.rb` is subject to change.
* If you want to add more tests feel free but the existing ones must stay.

### Setup
* Install Ruby 2.7.3
* Install bundler (`gem install bundler`)
* Setup project:
```
git clone https://github.com/renuo/highest-value-palindrome.git
cd highest-value-palindrome
bin/setup
```

### Tests
```
bin/check
```

### Credits
* https://www.hackerrank.com/challenges/richie-rich/problem
* https://medium.com/@lonell.liburd/highest-value-palindrome-1275edcd1430
