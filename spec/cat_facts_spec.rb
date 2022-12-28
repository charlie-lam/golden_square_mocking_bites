require 'cat_facts'

RSpec.describe CatFacts do
    it "returns a random cat fact" do
        cat_dbl = double(:cat , get: '{"fact":"Cats have supersonic hearing","length":28}')
        cat = CatFacts.new(cat_dbl)
        result = cat.provide
        expect(result).to eq "Cat fact: Cats have supersonic hearing"
    end
end