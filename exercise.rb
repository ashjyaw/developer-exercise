class Exercise

  def self.marklar(str)
    # Split the input string into an array of words using spaces as separators
    words = str.split(/\s+/)
  
    # Create an empty array to store the modified words
    result = []
  
    # Iterate through each word in the array
    words.each do |word|
      # Check if the word's length is greater than 4
      if word.length > 4
        # Check if the word starts with an uppercase letter
        if word =~ /^[A-Z]/
          # If it does, replace it with "Marklar" and preserve end-of-word punctuation
          result << "Marklar#{word.match(/\p{Punct}*$/)[0]}"
        else
          # If it doesn't, replace it with "marklar" and preserve end-of-word punctuation
          result << "marklar#{word.match(/\p{Punct}*$/)[0]}"
        end
      else
        # If the word's length is not greater than 4, keep it unchanged
        result << word
      end
    end
  
    # Join the modified words back into a single string using spaces as separators
    result.join(' ')
  end
  
  def self.even_fibonacci(nth)
    # Initialize variables for Fibonacci sequence and sum calculation
    a = 1
    b = 1
    sum = 0
    count = 1 # Initialize a count to track the nth term
  
    # Iterate through Fibonacci terms up to the nth term
    while count <= nth
      # Check if the current term (a) is even
      if a % 2 == 0
        # If it is, add it to the sum
        sum += a
      end
  
      # Update Fibonacci terms (a and b)
      a, b = b, a + b
  
      # Increment the count to move to the next term
      count += 1
    end
  
    # Return the sum of even Fibonacci terms up to the nth term
    sum
  end

end
