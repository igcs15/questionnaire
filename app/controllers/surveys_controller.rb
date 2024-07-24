class SurveysController < ApplicationController
  def new
  end

  def create
    yes_count = survey_params.values.count { |ans| ans.downcase == 'yes' }
    total_questions = survey_params.keys.size

    Result.create(yes_count: yes_count, total_questions: total_questions)

    @score = (yes_count * 100) / total_questions

    total_runs = Result.count
    total_score = Result.sum { |r| (r.yes_count * 100) / r.total_questions }

    @average_score = total_runs == 0 ? 0 : (total_score / total_runs)

    render :result
  end

  private

  def survey_params
    params.permit(:q1, :q2, :q3, :q4, :q5)
  end
end
