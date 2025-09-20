class ProblemsController < ApplicationController
  def home
  end
  def index
    if params[:difficulty].present?
      @problems = Problem.where(difficulty: params[:difficulty])
      @difficulty = params[:difficulty]
    else
      @problems = Problem.all
    end
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def answer
    @problem = Problem.find(params[:id])
    user_answer = params[:answer].to_s.strip

    if user_answer == @problem.reading
      flash[:notice] = "正解!"
    else
      flash[:alert] = "不正解 正解は#{@problem.reading}"
    end

    redirect_to result_problem_path(@problem)
  end

  def result
    @problem = Problem.find(params[:id])
  end
end
