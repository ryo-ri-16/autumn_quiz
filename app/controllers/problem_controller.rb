class ProblemController < ApplicationController
  def index
    @problems = Problem.all
  end
end
