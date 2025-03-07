class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method

    # Split with regex to maintain punctuation if included
    words = str.split(/(\W+)/)

    # Map over the split words using map! to modify the original array
    words.map! do |word|
      # Ternary operator, first checking the length then for capitalization. 
      word.length > 4 ? word[0] == word[0].upcase ? "Marklar" : "marklar" : word
    end
    # join the words back together
    return words.join
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

    # Initializations
    sum = 0
    fib = [1,1]

    # Edge cases, early return since none of these n values will produce a sum over 0
    if nth==0 || nth==1 || nth==2
      return 0
    end

    # Loop over sequence
    while fib.length < nth
      # Find next value in sequence
      fib_next = fib[-1] + fib[-2]
      # If value is even, add to sum
      if fib_next % 2 == 0
        sum += fib_next
      end
      # Append value to sequence regardless
      fib << fib_next
    end
    return sum
  end
end
