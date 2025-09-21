class ProblemsController < ApplicationController
  def home
  end

  def index
    count = params[:count].to_i.presence || 5
    @problems = Problem.all
    @problems = @problems.where(difficulty: params[:difficulty]) if params[:difficulty].present?
    @problems = @problems.order("RANDOM()").limit(count)
  end

  def answer
    results = []

    if params[:answers].present?
      params[:answers].each do |problem_id, answer_data|
        problem = Problem.find_by(id: problem_id.to_i)
        next unless problem

        user_answer = answer_data[:user_answer].to_s.strip
        correct = (user_answer == problem.reading)

        results << {
          problem_id: problem.id,
          user_answer: user_answer,
          correct: correct
        }
      end
    end

    session[:results] = results
    redirect_to result_problems_path
  end

  def result
    @results = session.delete(:results) || []
    @results = @results.map do |r|
      problem = Problem.find_by(id: r[:problem_id])
      r.merge(problem: problem)
    end
  end
end
