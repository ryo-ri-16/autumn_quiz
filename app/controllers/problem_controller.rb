class ProblemController < ApplicationController
  def index
    @problems = Problem.all
  end

  def show
  end

  def answer
  end

  def result
  end
end
