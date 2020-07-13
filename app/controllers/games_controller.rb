class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle.sample(10)
  end

  def score
    @letters = params[:letters].split
    @words = (params[:word] || "").upcase
  end
end
