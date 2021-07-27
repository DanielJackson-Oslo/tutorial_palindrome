# Palindrome module to add 
# palindrome? boolean for
# any string or integer or 
# compatible class.
module Palindrome

    def palindrome? 
        process_before_palindrome_test == process_before_palindrome_test.reverse
    end 

    private

        def process_before_palindrome_test
            # Remove any non-alpha-numeric characters, and normalize to a downcase string
            to_s.downcase.gsub(/[^[[:alnum:]]]/, "")
        end 

end