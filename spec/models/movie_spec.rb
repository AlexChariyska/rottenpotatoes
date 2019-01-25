require "rails_helper"

describe Movie do
  describe "search for similar movies" do
    before :each do
      @movie1 = FactoryBot.create(:movie, title: 'Catch me if you can', director: 'Steven Spielberg')
      @movie2 = FactoryBot.create(:movie, title: "Schindler's List", director: 'Steven Spielberg')
      @movie3 = FactoryBot.create(:movie, title: 'Seven', director: 'David Fincher') 
    end
    it 'it should find movies with the same director' do
        expect(Movie.similar_movies(@movie1)).to eq([@movie1, @movie2])
        expect(Movie.similar_movies(@movie3)).to eq([@movie3])
    end
    it 'it should not find movies with different director' do
        expect(Movie.similar_movies(@movie1)).to_not include([@movie3])
        expect(Movie.similar_movies(@movie3)).to_not include([@movie1, @movie2])
    end
  end
end