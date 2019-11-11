class Fizzbuzz
    def initialize
        @arr = (1..100).to_a
    end
    
    def generate_array
        @arr
    end

    def fizz_and_buzz_generator
        result = []
        @arr.each do |element| 
            if (element % 3 == 0 && element % 5 == 0)
                element = "fizzbuzz"
            end

            if (element % 3 == 0)
                element = "fizz"
            end   

            if (element % 5 == 0)
                element = "buzz"
            end

        result.push(element)
        end
        return result
              
    end
end
