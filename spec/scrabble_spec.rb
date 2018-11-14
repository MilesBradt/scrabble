require('scrabble')
require('rspec')
require('pry')


describe('#scrabble') do

    it("returns a scrabble score for a letter") do
    letter_test = Scrabble.new()
    expect(letter_test.scrabble("a")).to(eq(1))

  end
end
