module Api
  class SubmissionsController < ApiController
    def pending
      render json: submissions.as(:pending_submissions).to_a
    end

    def evaluated
      render json: submissions.as(:evaluated_submissions).to_a
    end

    def rejected
      render json: submissions.as(:rejected_submissions).to_a
    end

    def show
      render json: submissions.by_id(params[:id]).first
    end

    def create
      rom.command(:submissions).create.call(submission_params)
      head :ok
    end

    private

    def submission_params
      params.require(:submission).permit(:first_name, :last_name)
    end

    def submissions
      rom.relation(:submissions)
    end
  end
end
