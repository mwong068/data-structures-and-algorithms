Input:
1
TWLO
5
+14157088956
+15109926333
+17474824380
+1415123456
+919810155555

Output:
+14157088956

def vanity(codes, numbers)
    #take codes and translate each its respective integer values
    #put new codes into array
    #compare two arrays, integer codes and numbers
    integer_codes = []
    results = []
    
    codes.each do |code|
        integer_codes.push(translate(code))
    end
    
    integer_codes.each do |code|
        numbers.each do |number|
            if number.include?(code)
                results.push(number)
            end
        end
    end

    return results
end

def translate(code)
    values = {
        "A" => "2", "B" => "2", "C" => "2",
        "D" => "3", "E" => "3", "F" => "3",
        "G" => "4", "H" => "4", "I" => "4",
        "J" => "5", "K" => "5", "L" => "5",
        "M" => "6", "N" => "6", "O" => "6",
        "P" => "7", "Q" => "7", "R" => "7", "S" => "7",
        "T" => "8", "U" => "8", "V" => "8",
        "W" => "9", "X" => "9", "Y" => "9", "Z" => "9"
    }
    result = ""
    
    code.each_char do |letter|
        result += values[letter]
    end
    
    return result
end