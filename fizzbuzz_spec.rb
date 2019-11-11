require_relative '../fizzbuzz'

describe 'Fizzbuzz' do
    before(:each) do
        @fizzbuzz = Fizzbuzz.new
    end
    it 'return an array with size from 1 to 100' do
        #arrange
        fizzbuzz_array = @fizzbuzz.generate_array
        #act
        size = fizzbuzz_array.size
        #assert
        expect(size).to eq(100)
    end

    it 'multiples of 3 return fizz' do
        #arrange
        three_to_fizz = @fizzbuzz.fizz_and_buzz_generator
        #act
        change_the_number = three_to_fizz[2]
        #assert
        expect(change_the_number).to eq('fizz') 
    end

    it 'multiples of 5 return buzz' do
        #arrange
        five_to_buzz = @fizzbuzz.fizz_and_Buzz_generator
        #act
        change_the_number = five_to_buzz[4]
        #assert
        expect(change_the_number).to eq('buzz')
    end

    it 'multiples of 3 and 5 return fizzbuzz' do
        result = @fizzbuzz.fizz_and_Buzz_generator
        expect(result[15-1]).to eq('fizzbuzz') 
        expect(result[60-1]).to eq('fizzbuzz')
        expect(result[75-1]).to eq('fizzbuzz')
        expect(result[58-1]).to eq(58)   
    end



end
