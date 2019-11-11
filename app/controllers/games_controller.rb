class GamesController < ApplicationController
  def new
    @letters = (0...10).map { ('A'..'Z').to_a[rand(26)] }
    @name = ['L', 'E', 'T', 'T', 'E', 'R', 'S'].shuffle.join
  end

  def score
    @original = params[:letters].split(' ')
    @answer = params[:word].upcase.split('')
    compare(@original, @answer) ? @sentence = 'nice' : 'not nice'
  end

  private

  def compare(letters, word)
    letters.all?(word)
  end
end
