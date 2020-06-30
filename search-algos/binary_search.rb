# See if target appears in nums.
def binary_search(target, nums)

    # We think of floor_index and ceiling_index as "walls" around
    # the possible positions of our target, so by -1 below we mean
    # to start our wall "to the left" of the 0th index
    # (we *don't* mean "the last index").
    floor_index = -1
    ceiling_index = nums.length
  
    # If there isn't at least 1 index between floor and ceiling,
    # we've run out of guesses and the number must not be present.
    while floor_index + 1 < ceiling_index
  
      # Find the index ~halfway between the floor and ceiling.
      # We use integer division, so we'll never get a "half index".
      distance = ceiling_index - floor_index
      half_distance = distance / 2
      guess_index = floor_index + half_distance
  
      guess_value = nums[guess_index]
  
      if guess_value == target
        return true
  
      elsif guess_value > target
        # Target is to the left, so move ceiling to the left.
        ceiling_index = guess_index
  
      else
        # Target is to the right, so move floor to the right.
        floor_index = guess_index
      end
    end
  
    false
  end
  
  
  
  def find_rotation_point(words)
    first_word = words.first
  
    floor_index = 0
    ceiling_index = words.length - 1
  
    while floor_index < ceiling_index
  
      # Guess a point halfway between floor and ceiling.
      guess_index = (floor_index + ceiling_index) / 2
  
      # If guess comes after first word or is the first word.
      if words[guess_index] >= first_word
        # Go right.
        floor_index = guess_index
      else
        # Go left.
        ceiling_index = guess_index
      end
  
      # Return if floor and ceiling have converged.
      # Between floor and ceiling is where we flipped to the beginning,
      # so ceiling is alphabetically first.
      return ceiling_index if floor_index + 1 == ceiling_index
    end
  end
  
  
    words = [
      'ptolemaic',
      'retrograde',
      'supplant',
      'undulate',
      'xenoepist',
      'asymptote',  # <-- rotates here!
      'babka',
      'banoffee',
      'engender',
      'karpatka',
      'othellolagkage',
  ]
  
  puts find_rotation_point(words)