class Api::SubmissionsController < ApplicationController
  def pending
    render json: Submission.all
  end

  def evaluated
    render json: Submission.all
  end

  def rejected
    render json: Submission.all
  end

  def show
    submission = Submission.find_by_id(params[:id])
    render json: submission
  end

  def create
    submission = Submission.create(submission_params)
    render json: submission
  end

  def rate
    submission = Submission.find_by_id(params[:id])
    submission.update_attributes(rate: params[:rate])
    render json: submission
  end

  private

  def submission_params
    params[:submission].permit(:first_name, :last_name, :rate)
  end
end
